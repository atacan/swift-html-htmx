//
// https://github.com/atacan
// 10.12.23
import Foundation

public enum HxVals {
    case json(any Encodable)
    case evaluate(json: any Encodable)

    var description: String {
        get throws {
            #warning("is this the best way?")
            switch self {
            case let .json(json):
                return try String(data: JSONEncoder().encode(json), encoding: .utf8)!
            case let .evaluate(json):
                return try "js:" + String(data: JSONEncoder().encode(json), encoding: .utf8)!
            }
        }
    }
}
