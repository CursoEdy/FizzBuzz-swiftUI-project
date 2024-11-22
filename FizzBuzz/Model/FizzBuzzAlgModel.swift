//
//  FizzBuzzAlgModel.swift
//  FizzBuzz
//
//  Created by ednardo alves on 20/11/24.
//

import Foundation

struct FizzBuzzAlgModel: Identifiable {
    let id = UUID()
    
    let name: String
    var commentCodse: (String) -> String = {
        code in
        return "\\ \(code)"
    }
    var versionNumber: Double? = nil
    var imports: String = ""
    var boilerWrapper: (String) -> String = {
        code in
        
        return code
    }
    let maxConstDef: String
    let loopWrapper: (String) -> String
    let printString: (String) -> String
    let printInt: () -> String
    var equality: String = "=="
    var moduloSymbol: String = "%"
    let ifStatement: (String, String) -> String
    let elseifStatement: (String, String) -> String
    let elseStatement: (String) -> String
    
    var actualFizzBuzzCode: String {
        "Fizzbuzz in \(name)"
    }
}
