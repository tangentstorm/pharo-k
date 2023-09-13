Class {
	#name : #K3BlockNode,
	#superclass : #K3CodeNode,
	#category : #'K3-Parser'
}

{ #category : #generated }
K3BlockNode >> acceptVisitor: aCodeVisitor [
	^ aCodeVisitor visitBlock: self
]
