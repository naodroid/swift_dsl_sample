import Foundation

protocol HtmlElement {
    func toString() -> String
}
protocol HtmlTag: HtmlElement {
    var name: String { get }
    var child: HtmlElement { get }
}
extension HtmlTag {
    func toString() -> String {
        let c = child.toString()
        return "<\(name)>\n\(c)</\(name)>\n"
    }
}
extension Array: HtmlElement where Element == HtmlElement {
    func toString() -> String {
        return self.map { $0.toString() }.joined(separator: "\n")
    }
}



// MARK: functions
@_functionBuilder
struct HtmlBuilder {
    static func buildBlock() -> HtmlElement {
        [HtmlElement]()
    }
    static func buildBlock(_ c: HtmlElement) -> HtmlElement {
        [c]
    }
    static func buildBlock(_ c1: HtmlElement, _ c2: HtmlElement) -> HtmlElement {
        [c1, c2]
    }
    static func buildBlock(_ c1: HtmlElement, _ c2: HtmlElement, _ c3: HtmlElement) -> HtmlElement {
        [c1, c2, c3]
    }
    static func buildIf(_ n: HtmlElement?) -> HtmlElement {
        n ?? [HtmlElement]()
    }
    static func buildEither(first: HtmlElement?) -> HtmlElement {
        first ?? [HtmlElement]()
    }
    static func buildEither(second: HtmlElement?) -> HtmlElement {
        second ?? [HtmlElement]()
    }
}


