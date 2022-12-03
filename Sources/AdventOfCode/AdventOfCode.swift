import Foundation

/*
 Opponent:
 A — Rock: 1
 B — Paper: 2
 C — Scissors: 3

 You:
 X — Rock: 1
 Y — Paper: 2
 Z — Scissors: 3

 ##############
 ##############

 Lost 	— 0
 Draw 	— 3
 Won 	— 6
 */

// enum MoveParseCharacter: Error {
// 	case emptyCharacter(String)
// 	case matchingCharacter(String)
// }

// enum CurrentMove: Int {
// 	case rock = 1
// 	case paper = 2
// 	case scissors = 3

// 	init(_ c: Character) throws {
// 		guard !c.unicodeScalars.isEmpty else {
// 			throw MoveParseCharacter.emptyCharacter("Character can't be empty.")
// 		}

// 		switch c.uppercased() {
// 		case "A", "X": self = .rock
// 		case "B", "Y": self = .paper
// 		case "C", "Z": self = .scissors
// 		default:
// 			throw MoveParseCharacter.matchingCharacter("Can't match the \(c.uppercased()) move.")
// 		}
// 	}
// }

// enum MovePoint: Int {
// 	case lost = 0
// 	case draw = 3
// 	case won = 6
// }

// 		let input = """
// 		A Y
// 		B X
// 		C Z
// 		"""

// 		let x = input
// 			.split(separator: "\n")
// 			.map {
// 				let opponent = try? CurrentMove($0.first!)
// 				let you = try? CurrentMove($0.dropFirst(2).first!) // Y, X, Z
// 				// Move Point result
// 			}

// 		print(x)

@main
public enum AdventOfCode {
	public static func main() {
		dayTwo()
	}
}
