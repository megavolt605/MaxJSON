import Foundation

public extension String {
    public func name(before: String) -> String? {
        if let index = range(of: before)?.lowerBound {
            return String(self[..<index])
        }
        return nil
    }
}

