Class {
	#name : #K3LambdaNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'leftBraceToken',
		'block',
		'rightBraceToken',
		'sig'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3LambdaNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitLambda: self
]

{ #category : #generated }
K3LambdaNode >> block [
	^ block
]

{ #category : #generated }
K3LambdaNode >> block: aK3BlockNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aK3BlockNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : #generated }
K3LambdaNode >> leftBraceToken [
	^ leftBraceToken
]

{ #category : #generated }
K3LambdaNode >> leftBraceToken: aSmaCCToken [
	leftBraceToken := aSmaCCToken
]

{ #category : #generated }
K3LambdaNode >> nodeVariables [
	^ #(#block #sig #stmts)
]

{ #category : #generated }
K3LambdaNode >> rightBraceToken [
	^ rightBraceToken
]

{ #category : #generated }
K3LambdaNode >> rightBraceToken: aSmaCCToken [
	rightBraceToken := aSmaCCToken
]

{ #category : #generated }
K3LambdaNode >> sig [
	^ sig
]

{ #category : #generated }
K3LambdaNode >> sig: aK3SignatureNode [
	self sig notNil ifTrue: [ self sig parent: nil ].
	sig := aK3SignatureNode.
	self sig notNil ifTrue: [ self sig parent: self ]
]

{ #category : #generated }
K3LambdaNode >> tokenVariables [
	^ #(#leftBraceToken #rightBraceToken #cmt)
]
