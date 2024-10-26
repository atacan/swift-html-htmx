/// - hx-boost
///     - add or remove progressive enhancement for links and forms
/// - hx-get
///     - issues a GET to the specified URL
/// - hx-post
///     - issues a POST to the specified URL
/// - hx-on
///     - handle any event with a script inline
/// - hx-push-url
///     - pushes the URL into the browser location bar, creating a new history entry
/// - hx-select
///     - select content to swap in from a response
/// - hx-select-oob
///     - select content to swap in from a response, out of band (somewhere other than the target)
/// - hx-swap
///     - controls how content is swapped in (outerHTML, beforeend, afterend, …)
/// - hx-swap-oob
///     - marks content in a response to be out of band (should swap in somewhere other than the target)
/// - hx-target
///     - specifies the target element to be swapped
/// - hx-trigger
///     - specifies the event that triggers the request
/// - hx-vals
///     - adds values to the parameters to submit with the request (JSON-formatted)
/// #Additional Attribute Reference
/// 
/// The table below lists all other attributes available in htmx.
/// 
/// Attribute	Description
/// - hx-confirm
///     - shows a confirm() dialog before issuing a request
/// - hx-delete
///     - issues a DELETE to the specified URL
/// - hx-disable
///     - disables htmx processing for the given node and any children nodes
/// - hx-disabled-elt
///     - adds the disabled attribute to the specified elements while a request is in flight
/// - hx-disinherit
///     - control and disable automatic attribute inheritance for child nodes
/// - hx-encoding
///     - changes the request encoding type
/// - hx-ext
///     - extensions to use for this element
/// - hx-headers
///     - adds to the headers that will be submitted with the request
/// - hx-history
///     - prevent sensitive data being saved to the history cache
/// - hx-history-elt
///     - the element to snapshot and restore during history navigation
/// - hx-include
///     - include additional data in requests
/// - hx-indicator
///     - the element to put the htmx-request class on during the request
/// - hx-params
///     - filters the parameters that will be submitted with a request
/// - hx-patch
///     - issues a PATCH to the specified URL
/// - hx-preserve
///     - specifies elements to keep unchanged between requests
/// - hx-prompt
///     - shows a prompt() before submitting a request
/// - hx-put
///     - issues a PUT to the specified URL
/// - hx-replace-url
///     - replace the URL in the browser location bar
/// - hx-request
///     - configures various aspects of the request
/// - hx-sse
///     - has been moved to an extension. Documentation for older versions
/// - hx-sync
///     - control how requests made by different elements are synchronized
/// - hx-validate
///     - force elements to validate themselves before a request
/// - hx-vars
///     - adds values dynamically to the parameters to submit with the request (deprecated, please use hx-vals)
/// - hx-ws
///     - has been moved to an extension. Documentation for older versions
public enum HtmxAttribute: String {
    case boost = "hx-boost"
    case get = "hx-get"
    case post = "hx-post"
    case on = "hx-on"
    case pushUrl = "hx-push-url"
    case select = "hx-select"
    case selectOob = "hx-select-oob"
    case swap = "hx-swap"
    case swapOob = "hx-swap-oob"
    case target = "hx-target"
    case trigger = "hx-trigger"
    case vals = "hx-vals"

    case confirm = "hx-confirm"
    case delete = "hx-delete"
    case disable = "hx-disable"
    case disabledElt = "hx-disabled-elt"
    case disinherit = "hx-disinherit"
    case encoding = "hx-encoding"
    case ext = "hx-ext"
    case headers = "hx-headers"
    case history = "hx-history"
    case historyElt = "hx-history-elt"
    case include = "hx-include"
    case indicator = "hx-indicator"
    case params = "hx-params"
    case patch = "hx-patch"
    case preserve = "hx-preserve"
    case prompt = "hx-prompt"
    case put = "hx-put"
    case replaceUrl = "hx-replace-url"
    case request = "hx-request"
    case sse = "hx-sse"
    case sync = "hx-sync"
    case validate = "hx-validate"
    case vars = "hx-vars"
    case ws = "hx-ws"

    public var description: String {
        rawValue
    }
}