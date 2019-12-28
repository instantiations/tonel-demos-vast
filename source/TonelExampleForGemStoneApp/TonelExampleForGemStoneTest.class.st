Class {
	#name : 'TonelExampleForGemStoneTest',
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
	#category : 'TonelExampleForGemStoneApp'
}

{
	#category : 'Accessing'
}
TonelExampleForGemStoneTest class >> classInstVar1 [

	^ classInstVar1 ifNil: [ classInstVar1 := 'classInstVar1' ]
]

{
	#category : 'Accessing'
}
TonelExampleForGemStoneTest class >> classVar1 [

	^ ClassVar1 ifNil: [ ClassVar1 := 'ClassVar1' ]
]

{
	#category : 'Private',
	#vaVisibility : 'private'
}
TonelExampleForGemStoneTest >> privateMethod [

	^'privateMethod'
]

{
	#category : 'Running'
}
TonelExampleForGemStoneTest >> setUp [
	instVar1 := 'instVar1'
]

{
	#category : 'Testing'
}
TonelExampleForGemStoneTest >> testClassInstVarAccess [

	self assert: self class classInstVar1 equals: 'classInstVar1'
]

{
	#category : 'Testing'
}
TonelExampleForGemStoneTest >> testClassVarAccess [

	self assert: self class classVar1 equals: 'ClassVar1'
]

{
	#category : 'Testing'
}
TonelExampleForGemStoneTest >> testExtendedMethod [

	self assert: self tonelExampleForGemStoneExtendedMethod equals: 'tonelExampleForGemStoneExtendedMethod'
]

{
	#category : 'Testing'
}
TonelExampleForGemStoneTest >> testInstVarAccess [
	
	self assert: instVar1 equals: 'instVar1'
]

{
	#category : 'Testing'
}
TonelExampleForGemStoneTest >> testPrivateMethod [

	self assert: self privateMethod equals: 'privateMethod'
]
