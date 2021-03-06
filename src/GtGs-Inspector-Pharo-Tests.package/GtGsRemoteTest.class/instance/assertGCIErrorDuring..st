assertions
assertGCIErrorDuring: aBlock
	| theExceptionMap theDefaultExceptionClass |
	[ 
		theExceptionMap := GsGci32xErrSType errorToExceptionMap.
		theDefaultExceptionClass := GsGci32xErrSType defaultErrorExceptionClass.
		GsGci32xErrSType
			errorToExceptionMap: GsGci32xErrSType defaultErrorToExceptionMap;
			defaultErrorExceptionClass: GsGciError.
	
		self
			should: [ aBlock value ]
			raise: GsGciError.
			
	 ] ensure: [
		GsGci32xErrSType
			errorToExceptionMap: theExceptionMap;
			defaultErrorExceptionClass: theDefaultExceptionClass ].

	
	