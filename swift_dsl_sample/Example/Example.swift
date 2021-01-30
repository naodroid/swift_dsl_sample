import Foundation


// FunctionBuilder simple example: converting types to understand its behavior.
@_functionBuilder
struct Builder {
    
    static func buildBlock(_ n1: String, _ n2: String) -> Int {
        n1.count + n2.count
    }
}


func make(@Builder _ block: () -> Int) -> Float {
    Float(block()).squareRoot()
}

// call this from main.swift
func exampleTest() {
    let result = make {
        "AB"
        "CDEF"
    }
    print(result) //2.4494898 =sqrt(6)
}
