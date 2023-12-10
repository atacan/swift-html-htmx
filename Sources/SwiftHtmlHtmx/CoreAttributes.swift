import SwiftHtml

public extension Tag {
    /// The hx-boost attribute allows you to “boost” normal anchors and form tags to use AJAX instead. This has the nice fallback that, if the user does not have javascript enabled, the site will continue to work.
    ///
    /// For anchor tags, clicking on the anchor will issue a GET request to the url specified in the href and will push the url so that a history entry is created. The target is the <body> tag, and the innerHTML swap strategy is used by default. All of these can be modified by using the appropriate attributes, except the click trigger.
    ///
    /// For forms the request will be converted into a GET or POST, based on the method in the method attribute and will be triggered by a submit. Again, the target will be the body of the page, and the innerHTML swap will be used. The url will not be pushed, however, and no history entry will be created. (You can use the hx-push-url attribute if you want the url to be pushed.)
    func hxBoost(_ value: Bool) -> Self {
        attribute("hx-boost", String(value))
    }
    
    /// The hx-get attribute will cause an element to issue a GET to the specified URL and swap the HTML into the DOM using a swap strategy:
    func hxGet(_ url: String) -> Self {
        attribute("hx-get", url)
    }
    
    /// The hx-post attribute will cause an element to issue a POST to the specified URL and swap the HTML into the DOM using a swap strategy:
    func hxPost(_ url: String) -> Self {
        attribute("hx-post", url)
    }
    
    /// The hx-on attribute allows you to embed scripts inline to respond to events directly on an element; similar to the onevent properties found in HTML, such as onClick.
    
    /// hx-on improves upon onevent by enabling the handling of any event for enhanced Locality of Behaviour (LoB). This also enables you to handle any htmx event.
    ///
    /// There are two forms of this attribute, one in which you specify the event as part of the attribute name after a colon (hx-on:click, for example), and a deprecated form that uses the hx-on attribute directly. The latter should only be used if IE11 support is required.
    func hxON(_ event: JSEvent, _ script: String) -> Self {
        attribute("hx-on:" + event.description, script)
    }
    
    /// The hx-push-url attribute allows you to push a URL into the browser location history. This creates a new history entry, allowing navigation with the browser’s back and forward buttons. htmx snapshots the current DOM and saves it into its history cache, and restores from this cache on navigation.
    ///
    /// The possible values of this attribute are:
    ///
    /// - true, which pushes the fetched URL into history.
    /// - false, which disables pushing the fetched URL if it would otherwise be pushed due to inheritance or hx-boost.
    /// - A URL to be pushed into the location bar. This may be relative or absolute, as per history.pushState().
    func hxPushUrl(_ value: Bool) -> Self {
        attribute("hx-push-url", String(value))
    }

    /// The hx-push-url attribute allows you to push a URL into the browser location history. This creates a new history entry, allowing navigation with the browser’s back and forward buttons. htmx snapshots the current DOM and saves it into its history cache, and restores from this cache on navigation.
    ///
    /// The possible values of this attribute are:
    ///
    /// - true, which pushes the fetched URL into history.
    /// - false, which disables pushing the fetched URL if it would otherwise be pushed due to inheritance or hx-boost.
    /// - A URL to be pushed into the location bar. This may be relative or absolute, as per history.pushState().
    func hxPushUrl(_ url: String) -> Self {
        attribute("hx-push-url", url)
    }
    
    /// The hx-select attribute allows you to select the content you want swapped from a response. The value of this attribute is a CSS query selector of the element or elements to select from the response.
    func hxSelect(_ value: String) -> Self {
        attribute("hx-select", value)
    }
    
    /// The hx-select-oob attribute allows you to select content from a response to be swapped in via an out-of-band swap.
    ///
    /// The value of this attribute is comma separated list of elements to be swapped out of band. This attribute is almost always paired with hx-select.
    func hxSelectOob(_ value: String) -> Self {
        attribute("hx-select-oob", value)
    }  
    
    func hxSwap(_ value: HxSwap, modifiers: [HxSwap.Modifier] = []) -> Self {
        attribute(
            "hx-swap",
            value.rawValue + modifiers.map(\.description).joined(separator: " ")
        )
    }

    /// The hx-swap-oob attribute allows you to specify that some content in a response should be swapped into the DOM somewhere other than the target, that is “Out of Band”. This allows you to piggy back updates to other element updates on a response.
    /// If the value is true or outerHTML (which are equivalent) the element will be swapped inline.
    func hxSwapOobTrue() -> Self {
        attribute("hx-swap-oob", "true")
    }

    /// any valid hx-swap value
    func hxSwapOob(_ value: HxSwap) -> Self {
        attribute("hx-swap-oob", value.rawValue)
    }
    
    /// any valid hx-swap value, followed by a colon, followed by a CSS selector
    func hxSwapOob(_ value: HxSwap, _ selector: String) -> Self {
        attribute("hx-swap-oob", value.rawValue + ":" + selector)
    }
    
    /// The hx-target attribute allows you to target a different element for swapping than the one issuing the AJAX request.
    func hxTarget(_ value: HxTarget) -> Self {
        attribute("hx-target", value.description)
    }
    
    /// The hx-trigger attribute allows you to specify what triggers an AJAX request. A trigger value can be one of the following:
    func hxTrigger(_ value: [HxTrigger]) -> Self {
        attribute("hx-trigger", value.map(\.description).joined(separator: ", "))
    }
    
    func hxVals(_ value: HxVals) -> Self {
        #warning("unimplemented")
        return attribute("", "")
    }
    
}
