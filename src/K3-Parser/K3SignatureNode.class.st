Class {
	#name : #K3SignatureNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'leftBracketToken',
		'semicolonTokens',
		'args',
		'rightBracketToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3SignatureNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitSignature: self
]

{ #category : #generated }
K3SignatureNode >> args [
	^ args
]

{ #category : #generated }
K3SignatureNode >> args: anOrderedCollection [
	args := anOrderedCollection
]

{ #category : #generated }
K3SignatureNode >> compositeTokenVariables [
	^ #(#semicolonTokens #args)
]

{ #category : #'generated-initialize-release' }
K3SignatureNode >> initialize [
	super initialize.
	semicolonTokens := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
]

{ #category : #generated }
K3SignatureNode >> leftBracketToken [
	^ leftBracketToken
]

{ #category : #generated }
K3SignatureNode >> leftBracketToken: aSmaCCToken [
	leftBracketToken := aSmaCCToken
]

{ #category : #generated }
K3SignatureNode >> rightBracketToken [
	^ rightBracketToken
]

{ #category : #generated }
K3SignatureNode >> rightBracketToken: aSmaCCToken [
	rightBracketToken := aSmaCCToken
]

{ #category : #generated }
K3SignatureNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : #generated }
K3SignatureNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : #generated }
K3SignatureNode >> tokenVariables [
	^ #(#leftBracketToken #rightBracketToken #cmt)
]
