// 3GPP TS 38.101-1 V16.12.1 (2022-06)
import Foundation
public class Ts38101_1 {
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
    public static let nROperatingBand: [Int: (ClosedRange<Double>?, ClosedRange<Double>?, Types.DuplexMode, [Int]?)] = [
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
      12: "In the USA this band is restricted to 3450 ??? 3550 MHz and 3700 ??? 3980 MHz.",
      13: "This band is restricted to operation with shared spectrum channel access as defined in 37.213.",
      14: "This band is applicable only in countries/regions designating this band for sharedspectrum access use subject to country-specific conditions."
    ]
  }
  public init() {
  }
}
