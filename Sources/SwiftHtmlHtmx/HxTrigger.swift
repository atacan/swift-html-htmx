//
// https://github.com/atacan
// 10.12.23
	import SwiftCss

public enum HxTrigger {
    case event(JSEvent, filter: [JSEvent.Filter], modifier: [JSEvent.Modifier])
    case polling(every: TransitionDurationValue, filter: [String])

    var description: String {
        switch self {
        case let .event(event, filter, modifier):
            let filters = "[" + filter.map(\.description).joined() + "] "
            let modifiers = modifier.map(\.description).joined()
            return event.description + filters + modifiers
        case let .polling(every, filter):
            return every.rawValue + filter.joined()
        }
    }
}
