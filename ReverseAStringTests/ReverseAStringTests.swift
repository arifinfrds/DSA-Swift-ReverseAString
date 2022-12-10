//
//  ReverseAStringTests.swift
//  ReverseAStringTests
//
//  Created by arifinfrds.engineer on 10/12/22.
//

import XCTest

// GIVEN has empty string
// WHEN executed
// THEN should return empty string

// GIVEN has single string count
// WHEN executed
// THEN should return that string

// GIVEN has string of "ab"
// WHEN executed
// THEN should return "ba"

struct ReverseAString {
    func reverse(string: String) -> String {
        
        if string.isEmpty {
            return string
        }
        
        if string.count == 1 {
            return string
        }
        
        var characters = string.map { $0 }
        var reversedCharacters = [Character]()
        
        for index in (0...characters.count - 1).reversed() {
            reversedCharacters.append(characters[index])
        }
        
        return reversedCharacters
            .map { String($0) }
            .joined()
    }
}

final class ReverseAStringTests: XCTestCase {

    func test_reverse_shouldNotReverseOnEmptyString() {
        let sut = ReverseAString()
        
        let result = sut.reverse(string: "")
        
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_reverse_shouldNotReverseOnSingleStringCount() {
        let sut = ReverseAString()
        
        let result = sut.reverse(string: "a")
        
        XCTAssertEqual(result, "a")
    }
    
    func test_reverse_shouldConvertsOnMoreThanSingleStringCount() {
        let sut = ReverseAString()
        
        let result = sut.reverse(string: "Swift")
        
        XCTAssertEqual(result, "tfiwS")
    }
    
    func test_reverse_shouldConvertsOnMoreThanSingleStringCountMoreCases() {
        
        ["ab", "mac", "hello"].enumerated().forEach { (index, string) in
            
            let sut = ReverseAString()
            
            let result = sut.reverse(string: string)
            
            XCTAssertEqual(result, String(string.reversed()), "failed at index: \(index)")
        }
    }
}
