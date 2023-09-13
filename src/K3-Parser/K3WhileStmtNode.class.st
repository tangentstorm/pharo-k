Class {
	#name : #K3WhileStmtNode,
	#superclass : #K3CodeNode,
	#instVars : [
		'whileLeftBracketToken',
		'block',
		'rightBracketToken'
	],
	#category : #'K3-Parser'
}

{ #category : #generated }
K3WhileStmtNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitWhileStmt: self
]

{ #category : #generated }
K3WhileStmtNode >> block [
	^ block
]

{ #category : #generated }
K3WhileStmtNode >> block: aK3BlockNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aK3BlockNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : #generated }
K3WhileStmtNode >> nodeVariables [
	^ #(#block #stmts)
]

{ #category : #generated }
K3WhileStmtNode >> rightBracketToken [
	^ rightBracketToken
]

{ #category : #generated }
K3WhileStmtNode >> rightBracketToken: aSmaCCToken [
	rightBracketToken := aSmaCCToken
]

{ #category : #generated }
K3WhileStmtNode >> tokenVariables [
	^ #(#whileLeftBracketToken #rightBracketToken #cmt)
]

{ #category : #generated }
K3WhileStmtNode >> whileLeftBracketToken [
	^ whileLeftBracketToken
]

{ #category : #generated }
K3WhileStmtNode >> whileLeftBracketToken: aSmaCCToken [
	whileLeftBracketToken := aSmaCCToken
]
