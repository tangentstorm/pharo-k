Class {
	#name : #K3LValueNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'ident',
		'calls'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3LValueNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitLValue: self
]

{ #category : #generated }
K3LValueNode >> calls [
	^ calls
]

{ #category : #generated }
K3LValueNode >> calls: anOrderedCollection [
	self setParents: self calls to: nil.
	calls := anOrderedCollection.
	self setParents: self calls to: self
]

{ #category : #generated }
K3LValueNode >> compositeNodeVariables [
	^ #(#calls #lines)
]

{ #category : #generated }
K3LValueNode >> ident [
	^ ident
]

{ #category : #generated }
K3LValueNode >> ident: aSmaCCToken [
	ident := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
K3LValueNode >> initialize [
	super initialize.
	calls := OrderedCollection new: 2.
]

{ #category : #generated }
K3LValueNode >> tokenVariables [
	^ #(#ident #cmt)
]
