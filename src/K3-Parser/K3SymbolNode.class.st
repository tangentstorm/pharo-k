Class {
	#name : #K3SymbolNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'symbolToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3SymbolNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitSymbol: self
]

{ #category : #generated }
K3SymbolNode >> symbolToken [
	^ symbolToken
]

{ #category : #generated }
K3SymbolNode >> symbolToken: aSmaCCToken [
	symbolToken := aSmaCCToken
]

{ #category : #generated }
K3SymbolNode >> tokenVariables [
	^ #(#symbolToken #cmt)
]
