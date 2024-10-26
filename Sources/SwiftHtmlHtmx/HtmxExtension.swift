/// #Included Extensions List
/// Extension	Description
/// ajax-header
/// includes the commonly-used X-Requested-With header that identifies ajax requests in many backend frameworks
/// alpine-morph
/// an extension for using the Alpine.js morph plugin as the swapping mechanism in htmx.
/// class-tools
/// an extension for manipulating timed addition and removal of classes on HTML elements
/// client-side-templates
/// support for client side template processing of JSON/XML responses
/// debug
/// an extension for debugging of a particular element using htmx
/// event-header
/// includes a JSON serialized version of the triggering event, if any
/// head-support
/// support for merging the head tag from responses into the existing documents head
/// include-vals
/// allows you to include additional values in a request
/// json-enc
/// use JSON encoding in the body of requests, rather than the default x-www-form-urlencoded
/// idiomorph
/// an extension for using the idiomorph morphing algorithm as a swapping mechanism
/// loading-states
/// allows you to disable inputs, add and remove CSS classes to any element while a request is in-flight.
/// method-override
/// use the X-HTTP-Method-Override header for non-GET and POST requests
/// morphdom-swap
/// an extension for using the morphdom library as the swapping mechanism in htmx.
/// multi-swap
/// allows to swap multiple elements with different swap methods
/// path-deps
/// an extension for expressing path-based dependencies similar to intercoolerjs
/// preload
/// preloads selected href and hx-get targets based on rules you control.
/// remove-me
/// allows you to remove an element after a given amount of time
/// response-targets
/// allows to specify different target elements to be swapped when different HTTP response codes are received
/// restored
/// allows you to trigger events when the back button has been pressed
/// server-sent-events
/// uni-directional server push messaging via EventSource
/// web-sockets
/// bi-directional connection to WebSocket servers
public enum HtmxExtension: String, CaseIterable, Codable {
    case ajaxHeader = "ajax-header"
    case alpineMorph = "alpine-morph"
    case classTools = "class-tools"
    case clientSideTemplates = "client-side-templates"
    case debug = "debug"
    case eventHeader = "event-header"
    case headSupport = "head-support"
    case includeVals = "include-vals"
    case jsonEnc = "json-enc"
    case idiomorph = "idiomorph"
    case loadingStates = "loading-states"
    case methodOverride = "method-override"
    case morphdomSwap = "morphdom-swap"
    case multiSwap = "multi-swap"
    case pathDeps = "path-deps"
    case preload = "preload"
    case removeMe = "remove-me"
    case responseTargets = "response-targets"
    case restored = "restored"
    case serverSentEvents = "server-sent-events"
    case webSockets = "web-sockets"

    var description: String {
        rawValue
    }
} 