Class {
	#name : #K3NumberNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'number'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3NumberNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitNumber: self
]

{ #category : #generated }
K3NumberNode >> number [
	^ number
]

{ #category : #generated }
K3NumberNode >> number: aSmaCCToken [
	number := aSmaCCToken
]

{ #category : #generated }
K3NumberNode >> tokenVariables [
	^ #(#number #cmt)
]
