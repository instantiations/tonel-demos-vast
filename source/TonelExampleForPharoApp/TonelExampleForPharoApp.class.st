Class {
	#name : 'TonelExampleForPharoApp',
	#superclass : 'Application',
	#category : 'TonelExampleForPharoApp'
}

{
	#category : 'Not categorized'
}
TonelExampleForPharoApp class >> writeAppToTonelToGit [

	| writer fileSystem |

	fileSystem := (Smalltalk at: #TonelCommonFileSystem) new.
	writer := (Smalltalk at: #TonelWriter) on: fileSystem.
	writer
		writeApplication: TonelExampleForPharoApp
		into: (CfsPath named: 'c:\Users\mpeck\Documents\Instantiations\git\tonel-demos\source\')
	
]
