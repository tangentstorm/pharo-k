Trait {
	#name : #TK3CodeNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'K3-Parser'
}

{ #category : #generated }
TK3CodeNodeVisitor >> visitAdverb: anAdverb [
	^ self visitCode: anAdverb
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitAssign: anAssign [
	^ self visitCode: anAssign
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitBlock: aBlock [
	^ self visitCode: aBlock
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitCall: aCall [
	^ self visitCode: aCall
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitChain: aChain [
	^ self visitCode: aChain
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitCode: aCode [
	^ self visitSmaCCParseNode: aCode
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitDoStmt: aDoStmt [
	^ self visitCode: aDoStmt
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitIfStmt: anIfStmt [
	^ self visitCode: anIfStmt
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitLValue: aLValue [
	^ self visitCode: aLValue
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitLambda: aLambda [
	^ self visitCode: aLambda
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitLine: aLine [
	^ self visitCode: aLine
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitList: aList [
	^ self visitCode: aList
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitNumArray: aNumArray [
	^ self visitCode: aNumArray
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitNumColon: aNumColon [
	^ self visitCode: aNumColon
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitNumber: aNumber [
	^ self visitCode: aNumber
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitPrim: aPrim [
	^ self visitCode: aPrim
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitSignature: aSignature [
	^ self visitCode: aSignature
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitStmts: aStmts [
	^ self visitCode: aStmts
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitString: aString [
	^ self visitCode: aString
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitSymArray: aSymArray [
	^ self visitCode: aSymArray
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitSymbol: aSymbol [
	^ self visitCode: aSymbol
]

{ #category : #generated }
TK3CodeNodeVisitor >> visitWhileStmt: aWhileStmt [
	^ self visitCode: aWhileStmt
]
