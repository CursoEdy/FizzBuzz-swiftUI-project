//
//  StringExtension.swift
//  FizzBuzz
//
//  Created by ednardo alves on 22/11/24.
//

import Foundation

extension String {
    func indent() -> String {
        var result = ""
        let listOfLines = self.split(separator: "\n")
        listOfLines.forEach { line in
            result += "\t\(line)\n"
        }
        
        return String(result.dropLast())
    }
}
