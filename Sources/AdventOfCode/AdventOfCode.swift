import Foundation

@main
public enum AdventOfCode {
	public static func main() {
		let data = try! loadFromFile(fileName: "Day 3")
		print(dayThree(data))
	}
}
