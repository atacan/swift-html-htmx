import XCTest
@testable import SwiftHtmlHtmx
import SwiftHtml

final class SwiftHtmlHtmxTests: XCTestCase {
    
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest
        
        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
    
    // MARK: - hxBoost
    
    func testBoost() throws {
        let tag = Div {
            A("Go To Page 1").href("/page1")
            A("Go To Page 2").href("/page2")
        }
            .hxBoost(true)
        
        let html = #"""
        <div hx-boost="true">
          <a href="/page1">Go To Page 1</a>
          <a href="/page2">Go To Page 2</a>
        </div>
        """#
        XCTAssertEqual(render(tag), html)
    }
    
    // MARK: - hxGet
    
    func testGet() throws {
        let tag = Div("Get Some HTML").hxGet("/example")
        let html = #"<div hx-get="/example">Get Some HTML</div>"#
        XCTAssertEqual(render(tag), html)
    }
    
    // MARK: - hxPost
    
    func testPost() throws {
        let tag = Button("Enable Your Account")
            .hxPost("/account/enable")
            .hxTarget(.selector("body"))
        
        let html = #"""
        <button hx-post="/account/enable" hx-target="body">
          Enable Your Account
        </button>
        """#
        
        XCTAssertEqual(render(tag).removingWhitespace(), html.removingWhitespace())
        // XCTAssertEqual(render(tag).condensingWhitespace(), html.condensingWhitespace())
    }
    
    //    hxON
    //    hxPushUrl
    //    hxPushUrl
    //    hxSelect
    //    hxSelectOob
    //    hxSwap
}

extension String {
    /// keep the single space, while removing whitespaces. Because CharacterSet.whitespaces includes also the single space
    func condensingWhitespace() -> String {
        return self.components(separatedBy: .whitespacesAndNewlines)
            .filter { !$0.isEmpty }
            .joined(separator: " ")
    }
    
    func removingWhitespace() -> String {
        return self.components(separatedBy: .whitespacesAndNewlines)
            .joined(separator: "")
    }
}

func render(_ input: Tag) -> String {
    let doc = Document(.unspecified, {input})
    return DocumentRenderer(minify: false, indent: 2).render(doc)
}
