Class {
	#name : #K3AdverbNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'adverbToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3AdverbNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitAdverb: self
]

{ #category : #generated }
K3AdverbNode >> adverbToken [
	^ adverbToken
]

{ #category : #generated }
K3AdverbNode >> adverbToken: aSmaCCToken [
	adverbToken := aSmaCCToken
]

{ #category : #generated }
K3AdverbNode >> tokenVariables [
	^ #(#adverbToken #cmt)
]
