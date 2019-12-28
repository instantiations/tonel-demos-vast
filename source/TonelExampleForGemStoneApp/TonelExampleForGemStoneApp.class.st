Class {
	#name : 'TonelExampleForGemStoneApp',
	#superclass : 'Application',
	#category : 'TonelExampleForGemStoneApp'
}

{
	#category : 'Not categorized'
}
TonelExampleForGemStoneApp class >> writeAppToTonelToGit [

	| writer fileSystem |

	fileSystem := (Smalltalk at: #TonelCommonFileSystem) new.
	writer := (Smalltalk at: #TonelWriter) on: fileSystem.
	writer
		writeApplication: TonelExampleForGemStoneApp
		into: (CfsPath named: 'c:\Users\mpeck\Documents\Instantiations\git\tonel-demos\source\')
	
]
