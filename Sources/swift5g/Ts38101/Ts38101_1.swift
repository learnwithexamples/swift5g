// 3GPP TS 38.101-1 V16.12.1 (2022-06)
import Foundation
public class Ts38101_1 {
  public init() {}
  public static let info = SpecInfo(type: "TS", name: "38.101-1", rel: 16, rev: "12.1", date: "2022-06", desp: "User Equipment (UE) radio transmission and reception;\nPart 1: Range 1 Standalone")
  public static let definitions = [
    "Aggregated Channel Bandwidth": "The RF bandwidth in which a UE transmits and receives multiple contiguously aggregated carriers.",
    "Carrier aggregation": "Aggregation of two or more component carriers in order to support wider transmission bandwidths.",
    "Carrier aggregation band": "A set of one or more operating bands across which multiple carriers are aggregated with a specific set of technical requirements.",
    "Carrier aggregation bandwidth class": "A class defined by the aggregated transmission bandwidth configuration and maximum number of component carriers supported by a UE.",
    "Carrier aggregation configuration": "A combination of CA operating band(s) and CA bandwidth class(es) supported by a UE.",
    "Con-current operation": "The simultaneous transmission and reception of sidelink and Uu interfaces while operation is agnostic of the service used on each interface.",
    "Contiguous carriers": "A set of two or more carriers configured in a spectrum block where there are no RF requirements based on co-existence for un-coordinated operation within the spectrum block.",
    "Contiguous resource allocation": "A resource allocation of consecutive resource blocks within one carrier or across contiguously aggregated carriers. The gap between contiguously aggregated carriers due to the nominal channel spacing is allowed.",
    "Contiguous spectrum": "Spectrum consisting of a contiguous block of spectrum with no sub-block gaps.",
    "Inter-band carrier aggregation": "Carrier aggregation of component carriers in different operating bands",
    "Intra-band contiguous carrier aggregation": "Contiguous carriers aggregated in the same operating band.",
    "Intra-band non-contiguous carrier aggregation": "Non-contiguous carriers aggregated in the same operating band.",
    "Sub-band": "For a UE that supports shared spectrum channel access in wideband operation, a sub-band is the set of RBs within an approximately 20 MHz segment of the channel where the wideband channel is uniformly divided into an integer number of 20 MHz sub-bands. Sub-bands may be separately allocated in uplink and downlink.",
    "Sub-block": "This is one contiguous allocated block of spectrum for transmission and reception by the same UE. There may be multiple instances of sub-blocks within an RF bandwidth.",
    "Sub-block bandwidth": "The bandwidth of one sub-block.",
    "Sub-block gap": "A frequency gap between two consecutive sub-blocks within an RF bandwidth, where the RF requirements in the gap are based on co-existence for un-coordinated operation.",
    "UE transmission bandwidth configuration": "Set of resource blocks located within the UE channel bandwidth which may be used for transmitting or receiving by the UE.",
    "Vehicular UE": "A UE embedded in a vehicle, permanently connected to an embedded antenna system that radiates externally for NR operating bands.",
    "Wideband operation": "For a UE that supports shared spectrum channel access, wideband operation refers to operation within a channel larger than 20 MHz in which intra-cell guard bands may be configured to distinguish individual RBsets"
  ]
  public static let symbols = [
    "{\\Delta}F_{Global}": "Granularity of the global frequency raster",
    "{\\Delta}F_{Raster}": "Band dependent channel raster granularity",
  ]
  public static let abbreviations = [
    "ACLR": "Adjacent Channel Leakage Ratio",
    "ACS": "Adjacent Channel Selectivity",
    "A-MPR": "Additional Maximum Power Reduction",
    "BS": "Base Station",
    "BW": "Bandwidth",
    "BWP": "Bandwidth Part",
    "CA": "Carrier Aggregation",
    "CA_nX-nY": "Inter-band CA of component carrier(s) in one sub-block within Band nX and component carrier(s) in one sub-block within Band nY where nX and nY are the applicable NR operating bands",
    "CC": "Component Carriers",
    "CG": "Carrier Group",
    "CP-OFDM": "Cyclic Prefix-OFDM",
    "CW": "Continuous Wave",
    "DC": "Dual Connectivity",
    "DFT-s-OFDM": "Discrete Fourier Transform-spread-OFDM",
    "DM-RS": "Demodulation Reference Signal",
    "DTX": "Discontinuous Transmission",
    "E-UTRA": "Evolved UTRA",
    "EIRP": "Equivalent Isotropically Radiated Power",
    "EVM": "Error Vector Magnitude",
    "FR": "Frequency Range",
    "FRC": "Fixed Reference Channel",
    "FWA": "Fixed Wireless Access",
    "GSCN": "Global Synchronization Channel Number",
    "IBB": "In-band Blocking",
    "IDFT": "Inverse Discrete Fourier Transformation",
    "ITS": "Intelligent Transportation System",
    "ITU-R": "Radiocommunication Sector of the International Telecommunication Union",
    "MBW": "Measurement bandwidth defined for the protected band",
    "MCG": "Master Cell Group",
    "MOP": "Maximum Output Power",
    "MPR": "Allowed maximum power reduction",
    "MSD": "Maximum Sensitivity Degradation",
    "NR": "New Radio",
    "NR-ARFCN": "NR Absolute Radio Frequency Channel Number",
    "NS": "Network Signalling",
    "OCNG": "OFDMA Channel Noise Generator",
    "OOB": "Out-of-band",
    "P-MPR": "Power Management Maximum Power Reduction",
    "PRB": "Physical Resource Block",
    "PSCCH": "Physical Sidelink Control CHannel",
    "PSSCH": "Physical Sidelink Shared CHannel",
    "QAM": "Quadrature Amplitude Modulation",
    "RE": "Resource Element",
    "REFSENS": "Reference Sensitivity",
    "RF": "Radio Frequency",
    "RMS": "Root Mean Square (value)",
    "RSRP": "Reference Signal Receiving Power",
    "Rx": "Receiver",
    "SC": "Single Carrier",
    "SCG": "Secondary Cell Group",
    "SCS": "Subcarrier spacing",
    "SDL": "Supplementary Downlink",
    "SEM": "Spectrum Emission Mask",
    "SL": "Sidelink",
    "SL-MIMO": "Sidelink-Multiple Antenna transmission",
    "SNR": "Signal-to-Noise Ratio",
    "SRS": "Sounding Reference Symbol",
    "SS": "Synchronization Symbol",
    "SUL": "Supplementary uplink",
    "TAE": "Time Alignment Error",
    "TAG": "Timing Advance Group",
    "Tx": "Transmitter",
    "UL MIMO": "Uplink Multiple Antenna transmission",
    "ULFPTx": "Uplink Full Power Transmission",
    "V2X": "Vehicle to Everything"
  ]
  public static let bwList = [5, 10, 15, 20, 25, 30, 40, 50, 60, 70, 80, 90, 100]
  public class Table5p1_1 {
    public static let title = TableTitle(id: "5.1-1", name: "Definition of frequency ranges")
    public static let frequencyRangeDesignation: [String: ClosedRange<Double>] = ["FR1": 410...7125, "FR2": 24250...52600]
    public static func fHz2Fr(_ fHz: Double) -> Int? {
      Table5p1_1.frequencyRangeDesignation["FR1"]!.contains(fHz) ? 1 : Table5p1_1.frequencyRangeDesignation["FR2"]!.contains(fHz) ? 2 : nil
    }
    public var fHz: Double = 0
    public var fr: Int? {
      Table5p1_1.fHz2Fr(fHz)
    }
    public init(_ fHz: Double) {
      self.fHz = fHz
    }
  }
  public class Table5p2_1 {
    public static let title = TableTitle(id: "5.2-1", name: "NR operating bands in FR1")
    public static let nrOperatingBand: [Int: (ulFreq: ClosedRange<Double>?, dlFreq: ClosedRange<Double>?, duplex: Types.DuplexMode, note: [Int]?)] = [
      1:  (1920...1980, 2110...2170, Types.DuplexMode.FDD, nil),
      2:  (1850...1910, 1930...1990, Types.DuplexMode.FDD, nil),
      3:  (1710...1785, 1805...1880, Types.DuplexMode.FDD, nil),
      5:  (824...849, 869...894, Types.DuplexMode.FDD, nil),
      7:  (2500...2570, 2620...2690, Types.DuplexMode.FDD, nil),
      8:  (880...915, 925...960, Types.DuplexMode.FDD, nil),
      12: (699...716, 729...746, Types.DuplexMode.FDD, nil),
      14: (788...798, 758...768, Types.DuplexMode.FDD, nil),
      18: (815...830, 860...875, Types.DuplexMode.FDD, nil),
      20: (832...862, 791...821, Types.DuplexMode.FDD, nil),
      25: (1850...1915, 1930...1995, Types.DuplexMode.FDD, nil),
      26: (814...849, 859...894, Types.DuplexMode.FDD, nil),
      28: (703...748, 758...803, Types.DuplexMode.FDD, nil),
      29: (nil, 717...728, Types.DuplexMode.SDL, nil),
      30: (2305...2315, 2350...2360, Types.DuplexMode.FDD, [3]),
      34: (2010...2025, 2010...2025, Types.DuplexMode.TDD, nil),
      38: (2570...2620, 2570...2620, Types.DuplexMode.TDD, [10]),
      39: (1880...1920, 1880...1920, Types.DuplexMode.TDD, nil),
      40: (2300...2400, 2300...2400, Types.DuplexMode.TDD, nil),
      41: (2496...2690, 2496...2690, Types.DuplexMode.TDD, nil),
      46: (5150...5925, 5150...5925, Types.DuplexMode.TDD, [13, 14]),
      47: (5855...5925, 5855...5925, Types.DuplexMode.TDD, [11]),
      48: (3550...3700, 3550...3700, Types.DuplexMode.TDD, nil),
      50: (1432...1517, 1432...1517, Types.DuplexMode.TDD, [1]),
      51: (1427...1432, 1427...1432, Types.DuplexMode.TDD, nil),
      53: (2483.5...2495, 2483.5...2495, Types.DuplexMode.TDD, nil),
      65: (1920...2010, 2110...2200, Types.DuplexMode.FDD, [4]),
      66: (1710...1780, 2110...2200, Types.DuplexMode.FDD, nil),
      70: (1695...1710, 1995...2020, Types.DuplexMode.FDD, nil),
      71: (663...698, 617...652, Types.DuplexMode.FDD, nil),
      74: (1427...1470, 1475...1518, Types.DuplexMode.FDD, nil),
      75: (nil, 1432...1517, Types.DuplexMode.SDL, nil),
      76: (nil, 1427...1432, Types.DuplexMode.SDL, nil),
      77: (3300...4200, 3300...4200, Types.DuplexMode.TDD, [12]),
      78: (3300...3800, 3300...3800, Types.DuplexMode.TDD, nil),
      79: (4400...5000, 4400...5000, Types.DuplexMode.TDD, nil),
      80: (1710...1785, nil, Types.DuplexMode.SUL, nil),
      81: (880...915, nil, Types.DuplexMode.SUL, nil),
      82: (832...862, nil, Types.DuplexMode.SUL, nil),
      83: (703...748, nil, Types.DuplexMode.SUL, nil),
      84: (1920...1980, nil, Types.DuplexMode.SUL, nil),
      86: (1710...1780, nil, Types.DuplexMode.SUL, nil),
      89: (824...849, nil, Types.DuplexMode.SUL, nil),
      90: (2496...2690, 2496...2690, Types.DuplexMode.TDD, [5]),
      91: (832...862, 1427...1432, Types.DuplexMode.FDD, [9]),
      92: (832...862, 1432...1517, Types.DuplexMode.FDD, [9]),
      93: (880...915, 1427...1432, Types.DuplexMode.FDD, [9]),
      94: (880...915, 1432...1517, Types.DuplexMode.FDD, [9]),
      95: (2010...2025, nil, Types.DuplexMode.SUL, [8]),
      96: (5925...7125, 5925...7125, Types.DuplexMode.TDD, [13, 14]),
    ]
    public static func lookup(band: Int) -> (ulFreq: ClosedRange<Double>?, dlFreq: ClosedRange<Double>?, duplex: Types.DuplexMode, note: [Int]?)? {
      nrOperatingBand[band]
    }
    public static func lookup(freq: Double) -> [Int: (freq: ClosedRange<Double>, duplex: Types.DuplexMode, linkType: Types.LinkType)] {
      var res = [Int: (freq: ClosedRange<Double>, duplex: Types.DuplexMode, linkType: Types.LinkType)]()
      for (band, val) in nrOperatingBand {
        if (val.ulFreq != nil && val.ulFreq!.contains(freq)) {
          res[band] = (val.ulFreq!, val.duplex, val.duplex == Types.DuplexMode.TDD ? Types.LinkType.Both : Types.LinkType.UL)
        } else if (val.dlFreq != nil && val.dlFreq!.contains(freq)) {
          res[band] = (val.dlFreq!, val.duplex, Types.LinkType.DL)
        }
      }
      return res
    }
    public static let notes = [
      1: "UE that complies with the NR Band n50 minimum requirements in this specification shall also comply with the NR Band n51 minimum requirements.",
      2: "UE that complies with the NR Band n75 minimum requirements in this specification shall also comply with the NR Band n76 minimum requirements.",
      3: "Uplink transmission is not allowed at this band for UE with external vehiclemounted antennas.",
      4: "A UE that complies with the NR Band n65 minimum requirements in this specification shall also comply with the NR Band n1 minimum requirements.",
      5: "Unless otherwise stated, the applicability of requirements for Band n90 is in accordance with that for Band n41; a UE supporting Band n90 shall meet the requirements for Band n41. A UE supporting Band n90 shall also support band n41.",
      6: "A UE that supports NR Band n66 shall receive in the entire DL operating band.",
      7: "A UE that supports NR Band n66 and CA operation in any CA band shall also comply with the minimum requirements specified for the DL CA configurations CA_n66B and CA_n66(2A) in the current version of the specification.",
      8: "This band is applicable in China only.",
      9: "Variable duplex operation does not enable dynamic variable duplex configuration by the network, and is used such that DL and UL frequency ranges are supported independently in any valid frequency range for the band.",
      10: "When this band is used for V2X SL service, the band is exclusively used for NR V2X in particular regions.",
      11: "This band is unlicensed band used for V2X service. There is no expected network deployment in this band.",
      12: "In the USA this band is restricted to 3450 – 3550 MHz and 3700 – 3980 MHz.",
      13: "This band is restricted to operation with shared spectrum channel access as defined in 37.213.",
      14: "This band is applicable only in countries/regions designating this band for sharedspectrum access use subject to country-specific conditions."
    ]
  }
  public class Table5p2Ap1_1 {
    public static let title = TableTitle(id: "5.2A.1-1", name: "Intra-band contiguous CA operating bands in FR1")
    public static let nrIntraContiguousCaBandList: [Int] = [1, 7, 40, 41, 46, 48, 66, 71, 77, 78, 79]
    public static func nrCaBand(_ band: Int) -> String? {
      nrIntraContiguousCaBandList.contains(band) ? "CA_n" + String(band) : nil
    }
  }
  public class Table5p2Ap1_2 {
    public static let title = TableTitle(id: "5.2A.1-2", name: "Intra-band non-contiguous CA operating bands in FR1")
    public static let nrIntraNonContiguousCaBandList: [Int] = [3, 7, 25, 41, 48, 66, 77, 78]
    public static func nrCaBand(_ band: Int) -> String? {
      nrIntraNonContiguousCaBandList.contains(band) ? "CA_n" + String(band) + "(*)" : nil
    }
  }
  public class Table5p2Ap2p1_1 {
    public static let title = TableTitle(id: "5.2A.2.1-1", name: "Inter-band CA operating bands involving FR1 (two bands)")
    public static let nrInterCaBandList: [(bandA: Int, bandB: Int, notes: [Int]?, dlInterruptionAllowed: Bool)] = [
      (1, 3, nil, true),
      (1, 7, nil, true),
      (1, 8, nil, true),
      (1, 28, nil, true),
      (1, 40, nil, true),
      (1, 41, [1], true),
      (1, 77, [1], false),
      (1, 78, [1], false),
      (1, 79, [1], false),
      (2, 5, nil, true),
      (2, 48, nil, true),
      (2, 66, nil, true),
      (2, 77, nil, true),
      (2, 78, nil, true),
      (3, 7, nil, true),
      (3, 8, nil, true),
      (3, 28, nil, true),
      (3, 38, nil, true),
      (3, 40, [1], true),
      (3, 41, [1], false),
      (3, 77, [1], false),
      (3, 78, [1], false),
      (3, 79, [1], false),
      (5, 7, nil, true),
      (5, 66, nil, true),
      (5, 77, [1], true),
      (5, 78, [1], false),
      (5, 79, [1], false),
      (7, 25, nil, true),
      (7, 28, nil, true),
      (7, 66, nil, true),
      (7, 78, [1], true),
      (8, 39, [1], true),
      (8, 40, [1], true),
      (8, 41, [1], false),
      (8, 75, [1], true),
      (8, 78, [1], false),
      (8, 79, [1], false),
      (20, 28, [2], true),
      (20, 75, nil, true),
      (20, 78, nil, true),
      (25, 41, nil, true),
      (25, 46, [6], true),
      (25, 66, nil, true),
      (25, 71, nil, true),
      (25, 78, nil, true),
      (28, 40, nil, true),
      (28, 41, [1], true),
      (28, 50, nil, true),
      (28, 75, [2], true),
      (28, 77, [1], false),
      (28, 78, [1], false),
      (29, 66, nil, true),
      (29, 70, nil, true),
      (38, 66, nil, true),
      (38, 78, [1], true),
      (39, 40, nil, true),
      (39, 41, nil, false),
      (39, 79, [1], false),
      (40, 41, nil, true),
      (40, 78, [1], true),
      (40, 79, [1, 4], false),
      (41, 50, [1], true),
      (41, 66, nil, true),
      (41, 71, [1], true),
      (41, 78, [1], true),
      (41, 79, [1, 3], false),
      (46, 48, [6], true),
      (46, 66, [6], true),
      (48, 66, nil, true),
      (50, 78, nil, true),
      (66, 70, nil, true),
      (66, 71, nil, true),
      (66, 77, nil, true),
      (66, 78, nil, true),
      (70, 71, nil, true),
      (75, 78, [1], true),
      (76, 78, [1], true),
      (77, 79, [7], true),
      (78, 79, [5], true),
      (78, 92, nil, true),
      ]
    public static let notes = [
      1: "Applicable for UE supporting inter-band carrier aggregation with mandatory simultaneous Rx/Tx capability.",
      2: "The frequency range in band n28 is restricted for this band combination to 703-733 MHz for the UL and 758-788 MHz for the DL.",
      3: "The frequency range below 2506 MHz for Band n41 is not used in this combination.",
      4: "Applicable for frequency range above 4800 MHz for Band n79 in this combination.",
      5: "For UEs supporting band n77, the minimum requirements apply only when there is non-simultaneous Rx/Tx operation between n78-n79 NR carriers. This restriction applies also for these carriers when applicable NR CA configuration is part of a higher order configuration.",
      6: "The PCell is allocated in the licensed band in this combination.",
      7: "The minimum requirements apply only when there is non-simultaneous Rx/Tx operation between n77-n79 NR carriers. This restriction applies also for these carriers when applicable NR CA configuration is part of a higher order configuration.",
      8: "Applicable when dynamic switching between two uplink carriers is conducted. The DL interruption requirement is specified in clause 8.2.2.2.10 of 38.133.",
      ]
    public static func nrCaBand(_ bandA: Int, _ bandB: Int) -> String? {
      var band1 = bandA, band2 = bandB
      if (bandA > bandB) {
        band1 = bandB
        band2 = bandA
      }
      if ((nrInterCaBandList.filter {$0.0 == band1 && $0.1 == band2}).count > 0) {
        return "CA_n\(band1)-n\(band2)"
      } else {
        return nil
      }
    }
  }
  public class Table5p3p2_1 {
    public static let title = TableTitle(id: "5.3.2-1", name: "Maximum transmission bandwidth configuration NRB")
    public static let bwToNrb: [Int: [Int?]] = [
      15: [25, 52, 79, 106, 133, 160, 216, 270, nil, nil, nil, nil, nil],
      30: [11, 24, 38, 51, 65, 78, 106, 133, 162, 189, 217, 245, 273],
      60: [nil, 11, 18, 24, 31, 38, 51, 65, 79, 93, 107, 121, 135],
    ]
    public static func getNrb(scs: Int, bw: Int) -> Int? {
      if let tab = bwToNrb[scs] {
        if let idx = Ts38101_1.bwList.firstIndex(of: bw) {
          return tab[idx]
        }
      }
      return nil
    }
    public static func getBw(scs: Int, nRb: Int) -> Int? {
      if let tab = bwToNrb[scs] {
        if let idx = tab.firstIndex(of: nRb) {
          return Ts38101_1.bwList[idx]
        }
      }
      return nil
    }
    public static func getScs(bw: Int, nRb: Int) -> Int? {
      if let idx = Ts38101_1.bwList.firstIndex(of: bw) {
        for (scs, row) in bwToNrb {
          if (row[idx] == nRb) {
            return scs
          }
        }
      }
      return nil
    }
    public static func getGuardband(scs: Int, bw: Int) -> Double? {
      if let nRb = getNrb(scs: scs, bw: bw) {
        return (Double(bw) * 1e3 - Double(nRb * scs * 12)) / 2 - Double(scs) / 2
      }
      return nil
    }
  }
  public class Table5p3p3_1 {
    public static let title = TableTitle(id: "5.3.3-1", name: "Minimum guardband for each UE channel bandwidth and SCS (kHz)")
    public static let bwToGuardband: [Int: [Double?]] = [
      15: [242.5, 312.5, 382.5, 452.5, 522.5, 592.5, 552.5, 692.5, nil, nil, nil, nil, nil],
      30: [505, 665, 645, 805, 785, 945, 905, 1045, 825, 965, 925, 885, 845],
      60: [nil, 1010, 990, 1330, 1310, 1290, 1610, 1570, 1530, 1490, 1450, 1410, 1370],
    ]
    public static func getGuardband(scs: Int, bw: Int) -> Double? {
      if let tab = bwToGuardband[scs] {
        if let idx = Ts38101_1.bwList.firstIndex(of: bw) {
          return tab[idx]
        }
      }
      return nil
    }
  }
  public class Table5p3p5_1 {
    public static let title = TableTitle(id: "5.3.5-1", name: "Channel bandwidths for each NR band")
    public static let channelBandwidths: [Int: [Int: [Bool]]] = [ // band: (scs: [true/false])
      1: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
        60: [false,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
      ],
      2: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        60: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      3: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        60: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
      ],
      5: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      7: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
        60: [false,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
      ],
      8: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      12: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true, false, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true, false, false, false, false, false, false, false, false, false, false],
      ],
      14: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true, false, false, false, false, false, false, false, false, false, false, false],
        30: [false,  true, false, false, false, false, false, false, false, false, false, false, false],
      ],
      18: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true, false, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true, false, false, false, false, false, false, false, false, false, false],
      ],
      20: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      25: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        60: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
      ],
      28: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false,  true, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false,  true, false, false, false, false, false, false, false],
      ],
      29: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true, false, false, false, false, false, false, false, false, false, false, false],
        30: [false,  true, false, false, false, false, false, false, false, false, false, false, false],
      ],
      30: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true, false, false, false, false, false, false, false, false, false, false, false],
        30: [false,  true, false, false, false, false, false, false, false, false, false, false, false],
      ],
      34: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true, false, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true, false, false, false, false, false, false, false, false, false, false],
        60: [false,  true,  true, false, false, false, false, false, false, false, false, false, false],
      ],
      38: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        60: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
      ],
      39: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        60: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
      ],
      40: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true,  true,  true, false,  true, false, false],
        60: [false,  true,  true,  true,  true,  true,  true,  true,  true, false,  true, false, false],
      ],
      41: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [false,  true,  true,  true, false,  true,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true, false,  true,  true,  true,  true, false,  true,  true,  true],
        60: [false,  true,  true,  true, false,  true,  true,  true,  true, false,  true,  true,  true],
      ],
      46: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [false,  true, false,  true, false, false,  true, false, false, false, false, false, false],
        30: [false,  true, false,  true, false, false,  true, false,  true, false,  true, false, false],
        60: [false,  true, false,  true, false, false,  true, false,  true, false,  true, false, false],
      ],
      47: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [false,  true, false,  true, false,  true,  true, false, false, false, false, false, false],
        30: [false,  true, false,  true, false,  true,  true, false, false, false, false, false, false],
        60: [false,  true, false,  true, false,  true,  true, false, false, false, false, false, false],
      ],
      48: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false,  true,  true,  true, false,  true,  true,  true],
        60: [false,  true,  true,  true, false, false,  true,  true,  true, false,  true,  true,  true],
      ],
      50: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false,  true,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true, false,  true,  true,  true,  true, false,  true, false, false],
        60: [false,  true,  true,  true, false,  true,  true,  true,  true, false,  true, false, false],
      ],
      51: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true, false, false, false, false, false, false, false, false, false, false, false, false],
      ],
      53: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true, false, false, false, false, false, false, false, false, false, false, false],
        30: [false,  true, false, false, false, false, false, false, false, false, false, false, false],
        60: [false,  true, false, false, false, false, false, false, false, false, false, false, false],
      ],
      65: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false,  true, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false,  true, false, false, false, false, false],
        60: [false,  true,  true,  true, false, false, false,  true, false, false, false, false, false],
      ],
      66: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
        60: [false,  true,  true,  true,  true,  true,  true, false, false, false, false, false, false],
      ],
      70: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true,  true, false, false, false, false, false, false, false, false],
        60: [false,  true,  true,  true,  true, false, false, false, false, false, false, false, false],
      ],
      71: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      74: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        60: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      75: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
        60: [false,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
      ],
      76: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true, false, false, false, false, false, false, false, false, false, false, false, false],
      ],
      77: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [false,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true],
        60: [false,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true],
      ],
      78: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [false,  true,  true,  true,  true,  true,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true],
        60: [false,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true,  true],
      ],
      79: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [false, false, false, false, false, false,  true,  true, false, false, false, false, false],
        30: [false, false, false, false, false, false,  true,  true,  true, false,  true, false,  true],
        60: [false, false, false, false, false, false,  true,  true,  true, false,  true, false,  true],
      ],
      80: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true,  true,  true, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true,  true,  true, false, false, false, false, false, false, false],
        60: [false,  true,  true,  true,  true,  true, false, false, false, false, false, false, false],
      ],
      81: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      82: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      83: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      84: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        60: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      86: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false,  true, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false,  true, false, false, false, false, false, false],
        60: [false,  true,  true,  true, false, false,  true, false, false, false, false, false, false],
      ],
      89: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      90: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [false,  true,  true,  true, false,  true,  true,  true, false, false, false, false, false],
        30: [false,  true,  true,  true, false,  true,  true,  true,  true, false,  true,  true,  true],
        60: [false,  true,  true,  true, false,  true,  true,  true,  true, false,  true,  true,  true],
      ],
      91: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true, false, false, false, false, false, false, false, false, false, false, false],
      ],
      92: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      93: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true, false, false, false, false, false, false, false, false, false, false, false],
      ],
      94: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true,  true, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true,  true, false, false, false, false, false, false, false, false, false],
      ],
      95: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [ true,  true,  true, false, false, false, false, false, false, false, false, false, false],
        30: [false,  true,  true, false, false, false, false, false, false, false, false, false, false],
        60: [false,  true,  true, false, false, false, false, false, false, false, false, false, false],
      ],
      96: [ // 5MHz   10MHz  15MHz  20MHz  25MHz  30MHz  40MHz  50MHz 60MHz  70MHz  80MHz  90MHz  100MHz
        15: [false, false, false,  true, false, false,  true, false, false, false, false, false, false],
        30: [false, false, false,  true, false, false,  true, false,  true, false,  true, false, false],
        60: [false, false, false,  true, false, false,  true, false,  true, false,  true, false, false],
      ],
    ]
//    [Int: [Int: [Bool]]] = [ // band: (scs: [true/false])
    public static func getSCSs(band: Int, bw: Int = 0) -> [Int]? {
      if let info = channelBandwidths[band]?.sorted(by: { $0.0 < $1.0 }) {
        var SCSs = [Int]()
        for (scs, BWs) in info {
          if (bw == 0) {
            SCSs.append(scs)
          } else {
            if let idx = Ts38101_1.bwList.firstIndex(of: bw) {
              if BWs[idx] {
                SCSs.append(scs)
              }
            }
          }
        }
        return SCSs
      }
      return nil
    }
    public static func getBWs(band: Int, scs: Int) -> [Int]? {
      if let info = channelBandwidths[band]?[scs] {
        var BWs = [Int]()
        for (idx, bw) in info.enumerated() {
          if bw {
            BWs.append(Ts38101_1.bwList[idx])
          }
        }
        return BWs
      }
      return nil
    }
    public static func getBands(scs: Int = 0, bw: Int = 0) -> [Int]? {
      var Bands = [Int]()
      for (band, info) in channelBandwidths.sorted(by: {$0.0 < $1.0}) {
        for (scs2, BWs) in info.sorted(by: {$0.0 < $1.0}) {
          var bwOk = false
          if bw == 0 {
            bwOk = true
          } else if let idx = Ts38101_1.bwList.firstIndex(of: bw) {
            bwOk = BWs[idx]
          }
          if bwOk && (scs == 0 || scs == scs2) {
            Bands.append(band)
            break
          }
        }
      }
      return Bands.count > 0 ? Bands : nil
    }
    public static func isValid(band: Int, scs: Int, bw: Int) -> Bool {
      if let idx = Ts38101_1.bwList.firstIndex(of: bw) {
        if let trueFalse = channelBandwidths[band]?[scs]?[idx] {
          return trueFalse
        }
        return false
      }
      return false
    }
  }
  public class Table5p3p6_1 {
    public static let title = TableTitle(id: "Table 5.3.6-1", name: "FDD asymmetric UL and DL channel bandwidth combinations")
    public static let ulDlBwCombo : [Int: [Int: [([Int], [Int])]]] = [ // band: [set: [(UL, DL)]]
      66: [
        0: [([5, 10], [20, 40]), ([20], [40])],
        1: [([5, 10], [20, 25, 30, 40]), ([20, 25, 30], [40])],
      ],
      70: [
        0: [([5, 10], [15]), ([5, 10, 15], [20, 25])],
      ],
      71: [
        0: [([5], [10]), ([10], [15]), ([15], [20])],
      ],
      91: [
        0: [([10], [15])],
      ],
      92: [
        0: [([5], [10, 15, 20]), ([10], [15, 20])],
      ],
      93: [
        0: [([10], [5])],
      ],
      94: [
        0: [([5], [10, 15, 20]), ([10], [15, 20])],
      ],
    ]
  }
  public class Table5p3p6_2 {
    public static let title = TableTitle(id: "Table 5.3.6-2", name: "TDD asymmetric UL and DL channel bandwidth combinations")
    public static let ulDlBwCombo : [Int: [([Int], [Int])]] = [
      50: [([60], [80])],
    ]
  }
  public class Table5p3ap5_1 { // TBD
    public static let title = TableTitle(id: "Table 5.3A.5-1", name: "NR CA bandwidth classes")
    public static let mtfunc : () -> Int = {
         print("Hi")
         return 1
    }
    public static let test: Dictionary = Dictionary<String, (Int) -> Int>()
//    public static let nrCaBandwidthClass : (String) -> (() -> Int) = [
//      :]
  }
//  public class Table5p4p2p3_1 {
//    public static let title = TableTitle(id: "Table 5.4.2.3-1", name: "Applicable NR-ARFCN per operating band")
//    public static let nrarfcn : [Int: [(DeltaFRasterKhz: Int, UplinkRangeOfNref: ClosedRange<Int>?, UplinkStepSize: Int?, DownlinkRangeOfNref: ClosedRange<Int>?, DownlinkStepSize: Int?)]] = [
//       1: [(100, 384000...396000, 20, 422000...434000, 20)],
//       2: [(100, 370000...382000, 20, 386000...398000, 20)],
//       3: [(100, 342000...357000, 20, 361000...376000, 20)],
//       5: [(100, 164800...169800, 20, 173800...178800, 20)],
//       7: [(100, 500000...514000, 20, 524000...538000, 20)],
//       8: [(100, 176000...183000, 20, 185000...192000, 20)],
//      12: [(100, 139800...143200, 20, 145800...149200, 20)],
//      14: [(100, 157600...159600, 20, 151600...153600, 20)],
//      18: [(100, 163000...166000, 20, 172000...175000, 20)],
//      20: [(100, 166400...172400, 20, 158200...164200, 20)],
//      25: [(100, 370000...383000, 20, 386000...399000, 20)],
//      26: [(100, 162800...169800, 20, 171800...178800, 20)],
//      28: [(100, 140600...149600, 20, 151600...160600, 20)],
//      29: [(100, nil, nil, 143400...145600, 20)],
//      30: [(100, 461000...463000, 20, 470000...472000, 20)],
//      34: [(100, 402000...405000, 20, 402000...405000, 20)],
//      38: [(100, 514000...524000, 20, 514000...524000, 20)],
//      39: [(100, 376000...384000, 20, 376000...384000, 20)],
//      40: [(100, 460000...480000, 20, 460000...480000, 20)],
//       41: [( 15, 499200...537999, 3, 499200...537999,  3),
//            ( 30, 499200...537996, 6, 499200...537996,  6)],
//      46: [(15, 743334 – <1> – 795000 743334 – <1> – 795000
//      47: [(15, 790334 – <1> – 795000 790334 – <1> – 795000
//      48: [(15, 636667 – <1> – 646666 636667 – <1> – 646666
//        30 636668 – <2> – 646666 636668 – <2> – 646666
//      50: [(100, 286400...303400, 20, 286400...303400, 20)],
//      51: [(100, 285400...286400, 20, 285400...286400, 20)],
//      53: [(100, 496700...499000, 20, 496700...499000, 20)],
//      65: [(100, 384000...402000, 20, 422000...440000, 20)],
//      66: [(100, 342000...356000, 20, 422000...440000, 20)],
//      70: [(100, 339000...342000, 20, 399000...404000, 20)],
//      71: [(100, 132600...139600, 20, 123400...130400, 20)],
//      74: [(100, 285400...294000, 20, 295000...303600, 20)],
//      75: [(100, N/A 286400...303400, 20,
//      76: [(100, N/A 285400...286400, 20,
//      77: [(15, 620000 – <1> – 680000 620000 – <1> – 680000
//        30 620000 – <2> – 680000 620000 – <2> – 680000
//      78: [(15, 620000 – <1> – 653333 620000 – <1> – 653333
//        30, 620000 – <2> – 653332 620000 – <2> – 653332
//      79: [(15, 693334 – <1> – 733333 693334 – <1> – 733333
//        30, 693334 – <2> – 733332 693334 – <2> – 733332
//      80: [(100, 342000...357000, 20, N/A
//      81: [(100, 176000...183000, 20, N/A
//      82: [(100, 166400...172400, 20, N/A
//      83: [(100, 140600 – <20> –149600 N/A
//      84: [(100, 384000...396000, 20, N/A
//      86: [(100, 342000...356000, 20, N/A
//      89: [(100, 164800...169800, 20, N/A
//      90: [(15, 499200 – <3> – 537999 499200 – <3> – 537999
//        30, 499200 – <6> – 537996 499200 – <6> – 537996
//        100, 499200...538000, 20, 499200...538000, 20,
//      91: [(100, 166400...172400, 20, 285400...286400, 20)],
//      92: [(100, 166400...172400, 20, 286400...303400, 20)],
//      93: [(100, 176000...183000, 20, 285400...286400, 20)],
//      94: [(100, 176000...183000, 20, 286400...303400, 20)],
//      95: [(100, 402000...405000, 20, N/A
//            96: [(15, 795000...875000, 1, 795000...875000, 1)],
//    ]
//  }
}
