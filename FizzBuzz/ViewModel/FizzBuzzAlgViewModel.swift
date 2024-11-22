//
//  FizzBuzzAlgViewModel.swift
//  FizzBuzz
//
//  Created by ednardo alves on 21/11/24.
//

import Foundation

class FizzBuzzAlgViewModel: ObservableObject {
    @Published var fizzBuzzModels: [FizzBuzzAlgModel] = []
    
    init() {
        fizzBuzzModels = [
            .init(
                name: "Swift",
                maxConstDef: "let MAX = 100",
                loopWrapper: { code in
                    """
                    for i in 1...MAX {
                    \(code)
                    }
"""
                },
                printString: { str in
                    #"Print("\#(str)")"#
                },
                printInt: {
                    #"Print(\(i))"#
                },
                ifStatement: { logic, code in
                """
                if \(logic) {
                    \(code)
                }
                """
                },
                elseifStatement: { logic, code in
                """
                else if \(logic) {
                    \(code)
                }
                """
                },
                elseStatement: { code in
                """
                else {
                    \(code)
                }
                """
                }
            ),
            .init(
                name: "C",
                versionNumber: 1.0,
                imports: "include <stdio.h>",
                boilerWrapper: { code in
                """
                int main() {
                    \(code)
                }
                """
                },
                maxConstDef: "#define MAX 100",
                loopWrapper: { code in
                """
                for(int i = 1; i <= MAX; i++) {
                    \(code)
                }
                """
                },
                printString: { str in
                    #"printf("\#(str)");"#
                },
                printInt: {
                    #"printf(" %d\t", i);"#
                },
                ifStatement: { logic, code in
                """
                if (\(logic)) {
                    \(code)
                }
                """
                },
                elseifStatement: { logic, code in
                """
                else if (\(logic)) {
                    \(code)
                }
                """
                },
                elseStatement: { code in
                """
                else {
                    \(code)
                }
                """
                }
            )
        ]
    }
}
