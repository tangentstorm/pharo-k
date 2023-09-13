Class {
	#name : #K3SymArrayNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'syms'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3SymArrayNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitSymArray: self
]

{ #category : #generated }
K3SymArrayNode >> compositeNodeVariables [
	^ #(#syms #lines)
]

{ #category : #'generated-initialize-release' }
K3SymArrayNode >> initialize [
	super initialize.
	syms := OrderedCollection new: 2.
]

{ #category : #generated }
K3SymArrayNode >> syms [
	^ syms
]

{ #category : #generated }
K3SymArrayNode >> syms: anOrderedCollection [
	self setParents: self syms to: nil.
	syms := anOrderedCollection.
	self setParents: self syms to: self
]
