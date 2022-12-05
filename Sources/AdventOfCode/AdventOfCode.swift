import Foundation

@main
public enum AdventOfCode {
	public static func main() {
		let input = try! loadFromFile(fileName: "Day 4")
		dayFour(input)
	}
}
