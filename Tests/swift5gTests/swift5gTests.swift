import XCTest
@testable import swift5g

final class swift5gTests: XCTestCase {
  func testTs38101_1() throws {
    XCTAssertEqual(Ts38101_1.Table5p1_1.fHz2Fr(50), nil)
    XCTAssertEqual(Ts38101_1.Table5p1_1.fHz2Fr(500), 1)
    XCTAssertEqual(Ts38101_1.Table5p1_1.fHz2Fr(50000), 2)
    XCTAssertEqual(Ts38101_1.Table5p1_1.frequencyRangeDesignation["FR1"]!.lowerBound, 410)
    XCTAssertEqual(Ts38101_1.Table5p1_1.frequencyRangeDesignation["FR1"]!.upperBound, 7125)
    XCTAssertEqual(Ts38101_1.Table5p1_1.frequencyRangeDesignation["FR2"]!.lowerBound, 24250)
    XCTAssertEqual(Ts38101_1.Table5p1_1.frequencyRangeDesignation["FR2"]!.upperBound, 52600)
    XCTAssertEqual(Ts38101_1.Table5p2_1.nrOperatingBand[3]!.1!.lowerBound, 1805)
    XCTAssertEqual(Ts38101_1.Table5p2_1.nrOperatingBand[48]!.0!.upperBound, 3700)
    XCTAssertEqual(Ts38101_1.Table5p2_1.lookup(band: 48)!.0!.upperBound, 3700)
    print(Ts38101_1.Table5p2_1.lookup(freq: 1890).sorted(by: {$0.0 < $1.0}))
  }
}
