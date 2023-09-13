Class {
	#name : #K3PrimNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'primToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3PrimNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitPrim: self
]

{ #category : #generated }
K3PrimNode >> primToken [
	^ primToken
]

{ #category : #generated }
K3PrimNode >> primToken: aSmaCCToken [
	primToken := aSmaCCToken
]

{ #category : #generated }
K3PrimNode >> tokenVariables [
	^ #(#primToken #cmt)
]
