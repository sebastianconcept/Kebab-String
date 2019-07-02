*Kebab-String
kebabized
	"Answers a string that is the non-diacritics, lowercase, separators compacted and hyphen separated version of the receiver.
	Examples:
	' El ñandú   pide un Über ' kebabized -> el-nandu-pide-un-uber
	"

	| source kebabized |
	source := ReadStream on: self asNonDiacritical withSeparatorsCompacted trimBoth.
	kebabized := WriteStream on: String new.
	[ source atEnd ]
		whileFalse: [ | char |
			char := source next.
			char isSeparator
				ifTrue: [ kebabized nextPut: $- ]
				ifFalse: [ kebabized nextPut: char asLowercase ] ].
	^ kebabized contents