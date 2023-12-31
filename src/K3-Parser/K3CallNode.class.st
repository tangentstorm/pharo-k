Class {
	#name : #K3CallNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'leftBracketToken',
		'args',
		'rightBracketToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3CallNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitCall: self
]

{ #category : #generated }
K3CallNode >> args [
	^ args
]

{ #category : #generated }
K3CallNode >> args: aK3BlockNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := aK3BlockNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : #generated }
K3CallNode >> leftBracketToken [
	^ leftBracketToken
]

{ #category : #generated }
K3CallNode >> leftBracketToken: aSmaCCToken [
	leftBracketToken := aSmaCCToken
]

{ #category : #generated }
K3CallNode >> nodeVariables [
	^ #(#args #stmts)
]

{ #category : #generated }
K3CallNode >> rightBracketToken [
	^ rightBracketToken
]

{ #category : #generated }
K3CallNode >> rightBracketToken: aSmaCCToken [
	rightBracketToken := aSmaCCToken
]

{ #category : #generated }
K3CallNode >> tokenVariables [
	^ #(#leftBracketToken #rightBracketToken #cmt)
]
