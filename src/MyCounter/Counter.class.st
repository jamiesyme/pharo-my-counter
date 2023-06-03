"
I am a simple concrete class which supports incrementing and decrementing.

My API is:
- `decrement` and `increment`
- `count`

Create me with `startAt:`.
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #'instance creation' }
Counter class >> startingAt: anInteger [ 
	^ self new count: anInteger
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: aNumber [
	count := aNumber
]

{ #category : #accessing }
Counter >> decrement [
	count := count - 1.
]

{ #category : #accessing }
Counter >> increment [
	count := count + 1.
]

{ #category : #initialization }
Counter >> initialize [
	count := 0
]
