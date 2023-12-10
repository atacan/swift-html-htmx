/// A CSS query selector of the element to target.
/// this which indicates that the element that the hx-target attribute is on is the target.
/// closest <CSS selector> which will find the closest ancestor element or itself, that matches the given CSS selector (e.g. closest tr will target the closest table row to the element).
/// find <CSS selector> which will find the first child descendant element that matches the given CSS selector.
/// next which resolves to element.nextElementSibling
/// next <CSS selector> which will scan the DOM forward for the first element that matches the given CSS selector. (e.g. next .error will target the closest following sibling element with error class)
/// previous which resolves to element.previousElementSibling
/// previous <CSS selector> which will scan the DOM backwards for the first element that matches the given CSS selector. (e.g previous .error will target the closest previous sibling with error class)
public enum HxTarget { 
    case selector(String)
    case this
    case closest
    case find(selector: String)
    case nextElementSibling
    case next(selector: String)
    case previousElementSibling
    case previous(selector: String)

    var description: String {
        switch self {
        case let .selector(selector):
            return selector
        case .this:
            return "this"
        case .closest:
            return "closest"
        case let .find(selector):
            return "find " + selector
        case .nextElementSibling:
            return "next"
        case .next(let selector):
            return "next " + selector
        case .previousElementSibling:
            return "previous"
        case .previous(let selector):
            return "previous " + selector
        }
    }
}
