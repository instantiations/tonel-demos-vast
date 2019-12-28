Package {
	#name : 'TonelExampleApp',
	#vaPrerequisites : ['SUnit','TonelWriterModel'],
	#vaSubApplications : [	{		#condition : 'true',		#subapps : [			'TonelExampleSubApp'		]	}]
}
