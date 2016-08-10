comparing
isAncestorOf: anotherCommit
	"Warning: this method considers that a commit is ancestor of itself."
	^ self = anotherCommit or: [ 
		anotherCommit parents anySatisfy: [ :parent | 
			self isAncestorOf: parent  ]]