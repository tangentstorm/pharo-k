Class {
	#name : #K3IfStmtNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'ifLeftBracketToken',
		'block',
		'rightBracketToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3IfStmtNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitIfStmt: self
]

{ #category : #generated }
K3IfStmtNode >> block [
	^ block
]

{ #category : #generated }
K3IfStmtNode >> block: aK3BlockNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aK3BlockNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : #generated }
K3IfStmtNode >> ifLeftBracketToken [
	^ ifLeftBracketToken
]

{ #category : #generated }
K3IfStmtNode >> ifLeftBracketToken: aSmaCCToken [
	ifLeftBracketToken := aSmaCCToken
]

{ #category : #generated }
K3IfStmtNode >> nodeVariables [
	^ #(#block #stmts)
]

{ #category : #generated }
K3IfStmtNode >> rightBracketToken [
	^ rightBracketToken
]

{ #category : #generated }
K3IfStmtNode >> rightBracketToken: aSmaCCToken [
	rightBracketToken := aSmaCCToken
]

{ #category : #generated }
K3IfStmtNode >> tokenVariables [
	^ #(#ifLeftBracketToken #rightBracketToken #cmt)
]
