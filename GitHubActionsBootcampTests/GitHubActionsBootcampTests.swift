//
//  GitHubActionsBootcampTests.swift
//  GitHubActionsBootcampTests
//
//  Created by Ranbijay SinghDeo on 04/07/26.
//

import XCTest
@testable import GitHubActionsBootcamp

final class ContentViewTests: XCTestCase {

    func test_ValidNameReturnsTrue() {
        XCTAssertTrue(ContentView.isValidName("Ranbijay"))
    }

    func test_EmptyNameReturnsFalse() {
        XCTAssertFalse(ContentView.isValidName(""))
    }
}
