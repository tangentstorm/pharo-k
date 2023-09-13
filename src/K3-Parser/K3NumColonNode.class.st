Class {
	#name : #K3NumColonNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'numcolonToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3NumColonNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitNumColon: self
]

{ #category : #generated }
K3NumColonNode >> numcolonToken [
	^ numcolonToken
]

{ #category : #generated }
K3NumColonNode >> numcolonToken: aSmaCCToken [
	numcolonToken := aSmaCCToken
]

{ #category : #generated }
K3NumColonNode >> tokenVariables [
	^ #(#numcolonToken #cmt)
]
