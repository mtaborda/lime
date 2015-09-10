private - scanning
scanName

	[ characterType ~= #separator and: [ characterType ~= #eof ] ] whileTrue: [
			buffer nextPut: currentCharacter.
			self step ]