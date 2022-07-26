import XCTest
@testable import swift5g

final class swift5gTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        XCTAssertEqual(swift5g().text, "Hello, World!")
//        playground()
      let ts38101_1 = Ts38101_1()
      let mytab = Ts38101_1.Table5p1_1()
      print(ts38101_1.info.rel)
      print(ts38101_1.info.fullName)
      for (key, val) in ts38101_1.definitions {
        print("\(key): \(val)")
      }
    }
}
