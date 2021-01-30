import Foundation


exampleTest()

print("----------------------------------")

//html-example
let condition = true //change this to test buildIf or Either
let html = Html {
    Head {
        Title {
            Text("PageTitle")
        }
    }
    Body {
        H1 {
            Text("Head")
        }
        if condition {
            Text("ContentIf")
        }
        if condition {
            Text("ContentTrue")
        } else {
            Text("ContentFalse")
        }
    }
}
print(html.toString())
