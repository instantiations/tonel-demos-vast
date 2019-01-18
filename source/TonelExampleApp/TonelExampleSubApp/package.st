Package {
	#name : 'TonelExampleSubApp',
	#vaParent : 'TonelExampleApp',
	#vaSubApplications : [
		[ '(Smalltalk at: #\''TonelExampleConfExp\'' ifAbsentPut: [true] ) == false', [ 'TonelExampleShadowSubSubApp','TonelAnotherShadowSubSubApp']],
		[ '(Smalltalk at: #\''TonelExampleConfExp\'' ifAbsentPut: [true] ) == true', [ 'TonelExampleSubSubApp','TonelExampleAnotherSubSubApp']]
	]
}
