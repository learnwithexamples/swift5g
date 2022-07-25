// 3GPP TS 38.101-1 V16.12.1 (2022-06)
import Foundation
class Ts38101_1 {
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
  public init() {
  }
}
