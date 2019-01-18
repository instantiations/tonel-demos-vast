Class {
	#name : 'TonelExampleForPharoTest',
	#superclass : 'TestCase',
	#instVars : [
		'instVar1'
	],
	#classVars : [
		'ClassVar1'
	],
	#classInstVars : [
		'classInstVar1'
	],
	#category : 'TonelExampleForPharoApp'
}

{
	#category : 'Accessing'
}
TonelExampleForPharoTest class >> classInstVar1 [

	^ classInstVar1 ifNil: [ classInstVar1 := 'classInstVar1' ]
]

{
	#category : 'Accessing'
}
TonelExampleForPharoTest class >> classVar1 [

	^ ClassVar1 ifNil: [ ClassVar1 := 'ClassVar1' ]
]

{
	#category : 'Private',
	#vaVisibility : 'private'
}
TonelExampleForPharoTest >> privateMethod [

	^'privateMethod'
]

{
	#category : 'Running'
}
TonelExampleForPharoTest >> setUp [
	instVar1 := 'instVar1'
]

{
	#category : 'Testing'
}
TonelExampleForPharoTest >> testClassInstVarAccess [

	self assert: self class classInstVar1 equals: 'classInstVar1'
]

{
	#category : 'Testing'
}
TonelExampleForPharoTest >> testClassVarAccess [

	self assert: self class classVar1 equals: 'ClassVar1'
]

{
	#category : 'Testing'
}
TonelExampleForPharoTest >> testExtendedMethod [

	self assert: self tonelExampleForPharoExtendedMethod equals: 'tonelExampleForPharoExtendedMethod'
]

{
	#category : 'Testing'
}
TonelExampleForPharoTest >> testInstVarAccess [
	
	self assert: instVar1 equals: 'instVar1'
]

{
	#category : 'Testing'
}
TonelExampleForPharoTest >> testPrivateMethod [

	self assert: self privateMethod equals: 'privateMethod'
]
