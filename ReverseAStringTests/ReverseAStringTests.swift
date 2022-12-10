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
        
        return String(string.reversed())
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
        
        ["ab", "mac", "hello"].enumerated().forEach { (index, string) in
            
            let sut = ReverseAString()
            
            let result = sut.reverse(string: string)
            
            XCTAssertEqual(result, String(string.reversed()), "failed at index: \(index)")
        }
    }
}
