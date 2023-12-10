/// Class    Description
/// htmx-added
/// htmx-indicator
/// htmx-request
/// htmx-settling
/// htmx-swapping
public enum HtmxClass: String {
    /// Applied to a new piece of content before it is swapped, removed after it is settled.
    case added = "htmx-added"
    /// A dynamically generated class that will toggle visible (opacity:1) when a htmx-request class is present
    case indicator = "htmx-indicator"
    /// Applied to either the element or the element specified with hx-indicator while a request is ongoing
    case request = "htmx-request"
    /// Applied to a target after content is swapped, removed after it is settled. The duration can be modified via hx-swap.
    case settling = "htmx-settling"
    /// Applied to a target before any content is swapped, removed after it is swapped. The duration can be modified via hx-swap.
    case swapping = "htmx-swapping"
}
