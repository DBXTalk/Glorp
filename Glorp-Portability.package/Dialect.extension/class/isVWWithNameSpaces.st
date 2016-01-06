*Glorp-Portability
isVWWithNameSpaces
	"For cases where our hacked backports of asQualifiedReference and etc. to VW3 are not sufficient."

	^self isVisualWorks and: [self isNamespaceAware]