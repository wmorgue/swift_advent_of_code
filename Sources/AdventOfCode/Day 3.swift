import Foundation

fileprivate extension Character {
	var priority: Int {
		Int(asciiValue! - (isUppercase ? 38 : 96))
	}
}

// let data = """
// vJrwpWtwJgWrhcsFMMfFFhFp
// jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
// PmmdzqPrVvPwwTWBwg
// """

var calculatePriority: (Substring) -> Int = { ruckSack in
	let middle = ruckSack.count / 2
	let firstPart = ruckSack.prefix(middle)
	let secondPart = ruckSack.suffix(middle)
	let intersection = Set(firstPart).intersection(secondPart)

	return intersection
		.map(\.priority)
		.sum()
}

func dayThree(_ input: String) -> Int {
	input
		.split(separator: "\n")
		.map(calculatePriority)
		.sum()
}
