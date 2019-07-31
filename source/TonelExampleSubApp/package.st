Package {
	#name : 'TonelExampleSubApp',
	#vaParent : 'TonelExampleApp',
	#vaSubApplications : [	{		#condition : '(Smalltalk at: #\'TonelExampleConfExp\' ifAbsentPut: [true] ) == false',		#subapps : [			'TonelAnotherShadowSubSubApp',			'TonelExampleShadowSubSubApp'		]	},	{		#condition : '(Smalltalk at: #\'TonelExampleConfExp\' ifAbsentPut: [true] ) == true',		#subapps : [			'TonelExampleAnotherSubSubApp',			'TonelExampleSubSubApp'		]	}]
}
