import Algorithms

public func dayOne() -> (Int?, Int) {
	let dayOne = try? loadFromFile(fileName: "DayOne")
	let totalCalories: [Int] = parseFileInput(dayOne!)
	let (total, threeTotal) = (totalCalories.max(), totalCalories.max(count: 3).sum())

	return (total, threeTotal)
}
