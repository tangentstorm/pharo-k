Class {
	#name : #BaselineOfPharoK,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoK
}

{ #category : #loading }
BaselineOfPharoK class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'pharo-k' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfPharoK >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'PharoK'
		]
]
