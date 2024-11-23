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
    var commentCode: (String) -> String = {
        code in
        return "\\\\ \(code)"
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
        let mod3 = "i \(moduloSymbol) 3 \(equality) 0"
        let codFizz = printString("Fizz")
        
        let mod5 = "i \(moduloSymbol) 5 \(equality) 0"
        let codBuzz = printString("Buzz")
        
        let modFizzBuzz = "i \(moduloSymbol) 3 \(equality) 0 && i \(moduloSymbol) 5 \(equality) 0"
        let codFizzBuzz = printString("FizzBuzz")
        
        let printInt = printInt()
        
        let codeInLoop = """
            \(ifStatement(modFizzBuzz, codFizzBuzz))
            \(elseifStatement(mod3, codFizz.indent()))
            \(elseifStatement(mod5, codBuzz.indent()))
            \(elseStatement(printInt.indent()))
        """
        
        let mainCode = """
            \(maxConstDef)
            
            \(loopWrapper(codeInLoop))
        """
        
        var versionString = ""
        
        if let versionNumber = versionNumber {
            versionString = "Implementation version \(versionNumber)"
        }
        
        return """
            \(commentCode("FizzBuzz \(versionString) is implemented in the \(name) programming language."))
         \(imports)
        \(boilerWrapper(mainCode))
        """
        
    }
}
