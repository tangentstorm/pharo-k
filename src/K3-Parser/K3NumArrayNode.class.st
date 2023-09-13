Class {
	#name : #K3NumArrayNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'nums'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3NumArrayNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitNumArray: self
]

{ #category : #generated }
K3NumArrayNode >> compositeNodeVariables [
	^ #(#nums #lines)
]

{ #category : #'generated-initialize-release' }
K3NumArrayNode >> initialize [
	super initialize.
	nums := OrderedCollection new: 2.
]

{ #category : #generated }
K3NumArrayNode >> nums [
	^ nums
]

{ #category : #generated }
K3NumArrayNode >> nums: anOrderedCollection [
	self setParents: self nums to: nil.
	nums := anOrderedCollection.
	self setParents: self nums to: self
]
