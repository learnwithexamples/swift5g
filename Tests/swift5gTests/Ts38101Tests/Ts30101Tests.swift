import XCTest
@testable import swift5g

final class Ts38101_1Tests: XCTestCase {
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
    XCTAssertEqual(Ts38101_1.Table5p2_1.lookup(freq: 1890)[2]!.duplex, Types.DuplexMode.FDD)
    XCTAssertEqual(Ts38101_1.Table5p2Ap1_1.nrCaBand(1), "CA_n1")
    XCTAssertEqual(Ts38101_1.Table5p2Ap1_1.nrCaBand(2), nil)
    XCTAssertEqual(Ts38101_1.Table5p2Ap1_2.nrCaBand(3), "CA_n3(*)")
    XCTAssertEqual(Ts38101_1.Table5p2Ap2p1_1.nrCaBand(78, 1), "CA_n1-n78")
    XCTAssertEqual(Ts38101_1.Table5p2Ap2p1_1.nrCaBand(2, 1), nil)
    XCTAssertEqual(Ts38101_1.Table5p3p2_1.getNrb(scs: 30, bw: 20), 51)
    XCTAssertEqual(Ts38101_1.Table5p3p2_1.getScs(bw: 100, nRb: 273), 30)
    XCTAssertEqual(Ts38101_1.Table5p3p2_1.getScs(bw: 20, nRb: 24), 60)
    XCTAssertEqual(Ts38101_1.Table5p3p2_1.getGuardband(scs: 30, bw: 50), Ts38101_1.Table5p3p3_1.getGuardband(scs: 30, bw: 50))

//    print(Ts38101_1.Table5p2_1.lookup(freq: 1890).sorted(by: {$0.0 < $1.0}))
  }
}
