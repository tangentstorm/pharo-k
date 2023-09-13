Class {
	#name : #K3ChainNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'items'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3ChainNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitChain: self
]

{ #category : #generated }
K3ChainNode >> compositeNodeVariables [
	^ #(#items #lines)
]

{ #category : #'generated-initialize-release' }
K3ChainNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : #generated }
K3ChainNode >> items [
	^ items
]

{ #category : #generated }
K3ChainNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]
