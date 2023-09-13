Class {
	#name : #K3LineNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'nlToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3LineNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitLine: self
]

{ #category : #generated }
K3LineNode >> nlToken [
	^ nlToken
]

{ #category : #generated }
K3LineNode >> nlToken: aSmaCCToken [
	nlToken := aSmaCCToken
]

{ #category : #generated }
K3LineNode >> tokenVariables [
	^ #(#nlToken #cmt)
]
