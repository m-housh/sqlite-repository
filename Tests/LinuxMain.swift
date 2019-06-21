import XCTest

import SQLiteRepositoryTests

var tests = [XCTestCaseEntry]()
tests += SQLiteRepositoryTests.allTests()
XCTMain(tests)
