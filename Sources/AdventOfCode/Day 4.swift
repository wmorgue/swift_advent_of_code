import Foundation

func dayFour(_ input: String) {
	let mergedPairs = input
		.split(separator: "\n")
		.map {
			let n = $0
				.split { $0.isNumber == false }
				.compactMap { Int($0) }
			return (n[0] ... n[1], n[2] ... n[3])
		}

	let firstPuzzle: Int = mergedPairs.filter {
		$0.0.contains($0.1) || $0.1.contains($0.0)
	}
	.count
	let secondPuzzle: Int = mergedPairs.filter {
		$0.0.overlaps($0.1)
	}
	.count

	print("Puzzle 1: \(firstPuzzle)\nPuzzle 2: \(secondPuzzle)")
}
