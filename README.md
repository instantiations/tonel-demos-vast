<p align="center">
<!-- <img src="assets/logos/128x128.png"> -->
 <h1 align="center">Tonel and VA Smalltalk Demos</h1>
  <p align="center">
    Repository used for sharing some demos about Tonel integration with VASmalltalk.
    <br>
    <a href="docs/"><strong>Explore the docs »</strong></a>
    <br>
    <br>
    <a href="https://github.com/vasmalltalk/tonel-demos/issues/new?labels=Type%3A+Defect">Report a defect</a>
    |
    <a href="https://github.com/vasmalltalk/tonel-demos/issues/new?labels=Type%3A+Feature">Request feature</a>
  </p>
</p>

For [Instantiations](https://www.instantiations.com/) and VA Smalltalk, having git support is a priority. The first step is to have a [Tonel format](https://github.com/pharo-vcs/tonel) writer and reader and that is already in the roadmap for VA 9.2.

## License
- The code is licensed under [MIT](LICENSE).
- The documentation is licensed under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/).



## Tonel for VA in a Nutshell

Supporting the [Tonel format](https://github.com/pharo-vcs/tonel) is a work in progress for VA 9.2. Our implementation tries to satisfy as much as possible the spec. However, the spec didn't take into account some important VA-specific features. Below is the list of differences and how they were accomplished in VA:

- VA supports multiple categories per method (not just one). Solution: add custom `#vaCategories:` key to method definition whose value is an array of categories.
- VA supports `private` vs `public` methods. Solution: add custom `#vaVisibility` key to method definition whose value is a string.
- VA applications define prerequisites (dependencies on other applications). Therefore, we must store this information on Tonel in order to be able to import correctly. Solution: add custom key `#vaPrerequisites:` in package definition whose value is an array of the prereqs.
- In VA, applications can define subapplications that should be loaded whenever an associated `config expression` (Smalltalk code) answers `true`. The fact of having conditional loading (config expression) means that a current loaded root app may have some `shadow` subapps, which are subapps that haven't been loaded because the config expression for it answered `false`. However, when we are versioning code, we always want to version all of the subapps, whether they are shadow or not. Solution: add custom key `#vaSubApplications:` to package definition whose value is an array of arrays. The inner array is tuple where the first element is the config expression and the second element is an array of all the apps associated to it. Example:
```smalltalk
	#vaSubApplications : [
		[ '(Smalltalk at: #\''TonelExampleConfExp\'' ifAbsentPut: [true] ) == false', [ 'TonelExampleShadowSubSubApp','TonelAnotherShadowSubSubApp']],
		[ '(Smalltalk at: #\''TonelExampleConfExp\'' ifAbsentPut: [true] ) == true', [ 'TonelExampleSubSubApp','TonelExampleAnotherSubSubApp']]
	]
```
- Subapplications may also have sub sub applications up to level N. Solution: instead of having all tonel definitions in one root directory containing a `package.st`, allow a directory having subdirectories mapping subapplications, each having its own `package.st`.

> **Important**: Note that the last solution mentioned above to support N levels of subapps is *not* compatible with ANSI Tonel spec. Of course, it will be able to be imported by Tonel on VA but not on another dialect. The conclusion is: if you want to be cross-dialect compatible, then you can't use subapps. if you use subapps, you will be able to import only in VA.    

## Demos

Under [source](source/) there are some apps that were written with the whole purpose of demoing. These apps where written in VA Smalltalk, exported with Tonel and then pushed to this git repository. In addition, under the directory [envy](assets/envy/)  you can find the original exported apps as `.dat` files. That way, you can import the original apps in VA and see how they look like.

### Demo for importing in VA

`TonelExampleApp` has subapps, config expressions, prerequisites, shadow subapps, private methods, multi categorized methods, and all VA specific features. This app is intended to be imported only in VA Smalltalk, yet not loosing any if the information that was originally in the VA applications.

### Demo for importing in Pharo

`TonelExampleForPharoApp` doesn't have any VA subapps and it is expected to be imported in Pharo using [Iceberg](https://github.com/pharo-vcs/iceberg) without issues. The only condition is that you have to manually create a dummy class `Application` and `SubApplication` loading the code.
