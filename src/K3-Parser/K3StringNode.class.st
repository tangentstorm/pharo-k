Class {
	#name : #K3StringNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'stringToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3StringNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitString: self
]

{ #category : #generated }
K3StringNode >> stringToken [
	^ stringToken
]

{ #category : #generated }
K3StringNode >> stringToken: aSmaCCToken [
	stringToken := aSmaCCToken
]

{ #category : #generated }
K3StringNode >> tokenVariables [
	^ #(#stringToken #cmt)
]
