executing
performString: aString inContext: anObject
	^ aString 
		evaluateInContext: anObject
    	symbolList: (Smalltalk at: #GsCurrentSession) currentSession symbolList.
	