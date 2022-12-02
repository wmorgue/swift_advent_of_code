import Foundation

public func loadFromFile(fileName: String, fileExtens: String = "txt") throws -> String {
	guard !fileName.isEmpty else {
		// _undefined("File name can't be empty.")
		return "File name can't be empty: \(fileName.unicodeScalars.count)"
	}

	guard let file = Bundle.main.path(forResource: fileName, ofType: fileExtens) else {
		return "File not found."
	}
	return try String(contentsOfFile: file)
}

public func parseFileInput(_ str: String) -> [Int] {
	var result: [Int] { str.components(separatedBy: "\n\n")
		.map { line in
			line
				.split(separator: "\n")
				.map { Int($0)! }
				.sum()
		}
	}
	return result
}

public extension Sequence where Element: AdditiveArithmetic {
	func sum() -> Element { reduce(.zero, +) }
}
