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


## Demos

Under [source](source/) there are some apps that were written with the whole purpose of demoing. These apps where written in VA Smalltalk, exported with Tonel and then pushed to this git repository. In addition, under the directory [envy](assets/envy/)  you can find the original exported apps as `.dat` files. That way, you can import the original apps in VA and see how they look like.

### Demo for importing in VA

`TonelExampleApp` has subapps, config expressions, prerequisites, shadow subapps, private methods, multi categorized methods, and all VA specific features. This app is intended to be imported only in VA Smalltalk, yet not loosing any if the information that was originally in the VA applications. This cannot be currently tested until we finish the Tonel importer for VA. 

### Demo for importing in Pharo

`TonelExampleForPharoApp` doesn't have any VA subapps and it is expected to be imported in Pharo using [Iceberg](https://github.com/pharo-vcs/iceberg) without issues. The only condition is that you have to manually create a dummy class `Application` and `SubApplication` loading the code.
