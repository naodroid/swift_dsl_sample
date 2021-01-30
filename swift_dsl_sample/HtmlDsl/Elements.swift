//
//  Elements.swift
//  swift_dsl_sample
//
//  Created by 坂本　尚嗣 on 2021/01/25.
//

import Foundation

//--------------------
struct Text: HtmlElement {
    let value: String
    func toString() -> String { value + "\n" }
    init(_ value: String) {
        self.value = value
    }
}
// tag
struct Html: HtmlTag {
    let name: String = "html"
    let child: HtmlElement
    init(@HtmlBuilder child: () -> HtmlElement) {
        self.child = child()
    }
}
struct Head: HtmlTag {
    let name: String = "html"
    let child: HtmlElement
    init(@HtmlBuilder child: () -> HtmlElement) {
        self.child = child()
    }
}
struct Meta: HtmlTag {
    let name: String = "meta"
    let child: HtmlElement
    init(@HtmlBuilder child: () -> HtmlElement) {
        self.child = child()
    }
}
struct Title: HtmlTag {
    let name: String = "title"
    let child: HtmlElement
    init(@HtmlBuilder child: () -> HtmlElement) {
        self.child = child()
    }
}
struct Body: HtmlTag {
    let name: String = "body"
    let child: HtmlElement
    init(@HtmlBuilder child: () -> HtmlElement) {
        self.child = child()
    }
}
struct H1: HtmlTag {
    let name: String = "h1"
    let child: HtmlElement
    init(@HtmlBuilder child: () -> HtmlElement) {
        self.child = child()
    }
}
