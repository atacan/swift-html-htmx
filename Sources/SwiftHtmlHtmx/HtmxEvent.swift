import SwiftCss

public enum JSEvent {
    case click
    case custom(String)

    var description: String {
        switch self {
        case .click:
            return "click"
        case .custom(let value):
            return value
        }
    }


}

public enum HtmxEvent: String {
    /// send this event to an element to abort a request
    case abort = "htmx:abort"
    /// triggered after an AJAX request has completed processing a successful response
    case afterOnLoad = "htmx:afterOnLoad"
    /// triggered after htmx has initialized a node
    case afterProcessNode = "htmx:afterProcessNode"
    /// triggered after an AJAX request has completed
    case afterRequest = "htmx:afterRequest"
    /// triggered after the DOM has settled
    case afterSettle = "htmx:afterSettle"
    /// triggered after new content has been swapped in
    case afterSwap = "htmx:afterSwap"
    /// triggered before htmx disables an element or removes it from the DOM
    case beforeCleanupElement = "htmx:beforeCleanupElement"
    /// triggered before any response processing occurs
    case beforeOnLoad = "htmx:beforeOnLoad"
    /// triggered before htmx initializes a node
    case beforeProcessNode = "htmx:beforeProcessNode"
    /// triggered before an AJAX request is made
    case beforeRequest = "htmx:beforeRequest"
    /// triggered before a swap is done, allows you to configure the swap
    case beforeSwap = "htmx:beforeSwap"
    /// triggered just before an ajax request is sent
    case beforeSend = "htmx:beforeSend"
    /// triggered before the request, allows you to customize parameters, headers
    case configRequest = "htmx:configRequest"
    /// triggered after a trigger occurs on an element, allows you to cancel (or delay) issuing the AJAX request
    case confirm = "htmx:confirm"
    /// triggered on an error during cache writing
    case historyCacheError = "htmx:historyCacheError"
    /// triggered on a cache miss in the history subsystem
    case historyCacheMiss = "htmx:historyCacheMiss"
    /// triggered on a unsuccessful remote retrieval
    case historyCacheMissError = "htmx:historyCacheMissError"
    /// triggered on a successful remote retrieval
    case historyCacheMissLoad = "htmx:historyCacheMissLoad"
    /// triggered when htmx handles a history restoration action
    case historyRestore = "htmx:historyRestore"
    /// triggered before content is saved to the history cache
    case beforeHistorySave = "htmx:beforeHistorySave"
    /// triggered when new content is added to the DOM
    case load = "htmx:load"
    /// triggered when an element refers to a SSE event in its trigger, but no parent SSE source has been defined
    case noSSESourceError = "htmx:noSSESourceError"
    /// triggered when an exception occurs during the onLoad handling in htmx
    case onLoadError = "htmx:onLoadError"
    /// triggered after an out of band element as been swapped in
    case oobAfterSwap = "htmx:oobAfterSwap"
    /// triggered before an out of band element swap is done, allows you to configure the swap
    case oobBeforeSwap = "htmx:oobBeforeSwap"
    /// triggered when an out of band element does not have a matching ID in the current DOM
    case oobErrorNoTarget = "htmx:oobErrorNoTarget"
    /// triggered after a prompt is shown
    case prompt = "htmx:prompt"
    /// triggered after an url is pushed into history
    case pushedIntoHistory = "htmx:pushedIntoHistory"
    /// triggered when an HTTP response error (non-200 or 300 response code) occurs
    case responseError = "htmx:responseError"
    /// triggered when a network error prevents an HTTP request from happening
    case sendError = "htmx:sendError"
    /// triggered when an error occurs with a SSE source
    case sseError = "htmx:sseError"
    /// triggered when a SSE source is opened
    case sseOpen = "htmx:sseOpen"
    /// triggered when an error occurs during the swap phase
    case swapError = "htmx:swapError"
    /// triggered when an invalid target is specified
    case targetError = "htmx:targetError"
    /// triggered when a request timeout occurs
    case timeout = "htmx:timeout"
    /// triggered before an element is validated
    case validation_validate = "htmx:validation:validate"
    /// triggered when an element fails validation
    case validation_failed = "htmx:validation:failed"
    /// triggered when a request is halted due to validation errors
    case validation_halted = "htmx:validation:halted"
    /// triggered when an ajax request aborts
    case xhr_abort = "htmx:xhr:abort"
    /// triggered when an ajax request ends
    case xhr_loadend = "htmx:xhr:loadend"
    /// triggered when an ajax request starts
    case xhr_loadstart = "htmx:xhr:loadstart"
    /// triggered periodically during an ajax request that supports progress events
    case xhr_progress = "htmx:xhr:progress"

    var description: String {
        rawValue
    }
    
}

public enum EventFilter {
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
public enum EventModifier {
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
