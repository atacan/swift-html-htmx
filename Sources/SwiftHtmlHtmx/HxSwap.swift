import SwiftCss

/// The hx-swap attribute allows you to specify how the response will be swapped in relative to the target of an AJAX request. If you do not specify the option, the default is htmx.config.defaultSwapStyle (innerHTML).
///
/// The possible values of this attribute are:
/// Reference: https://htmx.org/attributes/hx-swap/
public enum HxSwap: String {
    /// `innerHTML` - Replace the inner html of the target element
    case innerHTML
    /// `outerHTML` - Replace the entire target element with the response
    case outerHTML
    /// `beforebegin` - Insert the response before the target element
    case beforeBegin = "beforebegin"
    /// `afterbegin` - Insert the response before the first child of the target element
    case afterBegin = "afterbegin"
    /// `beforeend` - Insert the response after the last child of the target element
    case beforEnd = "beforend"
    /// `afterend` - Insert the response after the target element
    case afterEnd = "afterend"
    /// `delete` - Deletes the target element regardless of the response
    case delete
    /// `none`- Does not append content from response (out of band items will still be processed).
    case none
    
    public enum Modifier {
        /// `transition:true`
        case transitionTrue
        case transition(TransitionDurationValue)
        /// You can modify the amount of time that htmx will wait after receiving a response to swap the content by including a swap modifier
        case swap(TransitionDurationValue)
        /// You can modify the time between the swap and the settle logic by including a settle modifier
        case settle(TransitionDurationValue)
        /// By default, htmx will update the title of the page if it finds a <title> tag in the response content. You can turn off this behavior by setting the ignoreTitle option to true.
        case ignoreTitle
        case scroll(ScrollShow)
        case show(ScrollShow)
        /// `focus-scroll:false` or `focus-scroll:true`
        case focusScroll(Bool)
        
        public enum ScrollShow {
            case targetElement(TopBottom)
            /// e.g. `show:#another-div:top`
            case anotherElement(selector: String, TopBottom)
            /// `show:window:bottom`
            /// `show:window:top`
            case window(TopBottom)
            /// `show:none`
            case none
            
            public enum TopBottom {
                case bottom
                case top
            }
        }
    }
}
