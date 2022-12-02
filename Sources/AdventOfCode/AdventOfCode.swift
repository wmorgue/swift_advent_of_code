import Algorithms
import Foundation

@main
public enum AdventOfCode {
	public static func main() {

		let input = """
"""

		// do {
			// let puzzleOne = try loadFromFile(fileName: "DayOne")
			// print(puzzleOne)
		 	let totalCalories = parseFileInput(input)
		 	print(totalCalories.max(count: 3).sum())
		// } catch {
		// 	print(error.localizedDescription)
		// }

		// let puzzleOne = try? loadFromFile(fileName: "input_1")
		// let totalCalories = parseFileInput(puzzleOne ?? "0")
		// print(totalCalories)
	}
}
