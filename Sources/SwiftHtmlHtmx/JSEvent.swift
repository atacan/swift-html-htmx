import SwiftCss

public enum JSEvent {
    case click
    case load
    case custom(String)

    var description: String {
        switch self {
        case .click:
            return "click"
        case .load:
            return "load"
        case .custom(let value):
            return value
        }
    }

    public enum Filter {
        case ctrlKey
        case custom(String)

        var description: String {
            switch self {
                case let .custom(value):
                    return value
                default:
                    return String(describing: self)
            }
        }
    }

    /// once - the event will only trigger once (e.g. the first click)
    /// changed - the event will only change if the value of the element has changed. Please pay attention change is the name of the event and changed is the name of the modifier.
    /// delay:<timing declaration> - a delay will occur before an event triggers a request. If the event is seen again it will reset the delay.
    /// throttle:<timing declaration> - a throttle will occur after an event triggers a request. If the event is seen again before the delay completes, it is ignored, the element will trigger at the end of the delay.
    /// from:<Extended CSS selector> - allows the event that triggers a request to come from another element in the document (e.g. listening to a key event on the body, to support hot keys)
    /// target:<CSS selector> - allows you to filter via a CSS selector on the target of the event. This can be useful when you want to listen for triggers from elements that might not be in the DOM at the point of initialization, by, for example, listening on the body, but with a target filter for a child element
    /// consume - if this option is included the event will not trigger any other htmx requests on parents (or on elements listening on parents)
    /// queue:<queue option> - determines how events are queued if an event occurs while a request for another event is in flight. Options are:
    public enum Modifier {
        case once
        case changed
        case delay(TransitionDurationValue)
        case throttle(TransitionDurationValue)
        case from(selector: String)
        case target(selector: String)
        case consume
        case queue(QueueOption)

        /// queue:<queue option> - determines how events are queued if an event occurs while a request for another event is in flight. Options are:
        public enum QueueOption: String {
            /// first - queue the first event
            case first
            /// last - queue the last event (default)
            case last
            /// all - queue all events (issue a request for each event)
            case all
            /// none - do not queue new events
            case none
        }

        var description: String {
            switch self {
            case .once:
                return "once"
            case .changed:
                return "changed"
            case .delay(let transitionDurationValue):
                return "delay:" + transitionDurationValue.rawValue
            case .throttle(let transitionDurationValue):
                return "throttle:" + transitionDurationValue.rawValue
            case .from(let selector):
                return "from:" + selector
            case .target(let selector):
                return "target:" + selector
            case .consume:
                return "consume"
            case .queue(let queueOption):
                return "queue:" + queueOption.rawValue
            }
        }
    }
}
