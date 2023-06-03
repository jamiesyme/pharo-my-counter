Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 3.
	self assert: c count equals: 3.
]

{ #category : #tests }
CounterTest >> testCounterStartingAt [
	self assert: (Counter startingAt: 3) count equals: 3
]

{ #category : #tests }
CounterTest >> testDecrement [
	| c |
	c := Counter new.
	c count: 3; decrement; decrement.
	self assert: c count equals: 1.
]

{ #category : #tests }
CounterTest >> testIncrement [
	| c |
	c := Counter new.
	c count: 0; increment; increment.
	self assert: c count equals: 2.
]

{ #category : #tests }
CounterTest >> testInitialize [
	self assert: Counter new count equals: 0
]

{ #category : #tests }
CounterTest >> testPrintOn [
	self assert: (Counter new count: 3; printString) equals: 'a Counter with value: 3'
]
