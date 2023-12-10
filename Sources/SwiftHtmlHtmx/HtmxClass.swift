
/// Class    Description
/// htmx-added
/// Applied to a new piece of content before it is swapped, removed after it is settled.
/// htmx-indicator
/// A dynamically generated class that will toggle visible (opacity:1) when a htmx-request class is present
/// htmx-request
/// Applied to either the element or the element specified with hx-indicator while a request is ongoing
/// htmx-settling
/// Applied to a target after content is swapped, removed after it is settled. The duration can be modified via hx-swap.
/// htmx-swapping
/// Applied to a target before any content is swapped, removed after it is swapped. The duration can be modified via hx-swap.
public enum HtmxClass: String {
    case added = "htmx-added"
    case indicator = "htmx-indicator"
    case request = "htmx-request"
    case settling = "htmx-settling"
    case swapping = "htmx-swapping"
}
