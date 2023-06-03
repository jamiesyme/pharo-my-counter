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
