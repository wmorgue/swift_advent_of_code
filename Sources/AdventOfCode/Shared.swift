import Foundation

public func chooseDay(_ day: Int) -> String {
	guard day >= 0, day < 26 else {
		return "Day \(day) is invalid. Choose from 0 to 25."
	}

	switch day {
	case 0: return "DayOne"
	case 1: return "DayTwo"
	case 2: return "DayThree"
	default: return "Unknown \(day) day."
	}
}

public func loadFromFile(fileName: String, fileExtens: String = "txt") throws -> String {
	guard !fileName.isEmpty else {
		// _undefined("File name can't be empty.")
		return "File name can't be empty: \(fileName.unicodeScalars.count)"
	}

	guard let file = Bundle.module.path(forResource: fileName, ofType: fileExtens) else {
		return "File \(fileName).\(fileExtens) not found."
	}
	return try String(contentsOfFile: file)
}

public func parseFileInput(_ str: String) -> [Int] {
	var result: [Int] {
		str.components(separatedBy: "\n\n")
			.map { line in
				line
					.split(separator: "\n")
					.compactMap(asInt)
					.sum()
			}
	}
	return result
}

public let asInt: (String.SubSequence) -> Int? = { Int($0) }

public extension Sequence where Element: AdditiveArithmetic {
	func sum() -> Element { reduce(.zero, +) }
}
