// 3GPP TS 38.101-1 V16.12.1 (2022-06)
import Foundation
public class Ts38101_1 {
  public let info = SpecInfo(type: "TS", name: "38.101-1", rel: 16, rev: "12.1", date: "2022-06", desp: "User Equipment (UE) radio transmission and reception;\nPart 1: Range 1 Standalone")
  public let definitions = [
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
  public let symbols = [
    "{\\Delta}F_{Global}": "Granularity of the global frequency raster",
    "{\\Delta}F_{Raster}": "Band dependent channel raster granularity",
  ]
  public let abbreviations = [
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
    public let name = "this is a table"
    public init() {
    }
  }
//  public let table5p1_1 = Table5p1_1()
  public init() {
  }
}
