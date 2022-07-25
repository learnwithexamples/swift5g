import Foundation
struct SpecInfo {
  public let type : String
  public let name : String
  public let rel : Int
  public let rev : String
  public let date : String
  public let desp : String
  public init(type: String, name: String, rel: Int, rev: String, date: String, desp: String) {
    self.type = type
    self.name = name
    self.rel = rel
    self.rev = rev
    self.date = date
    self.desp = desp
  }
  public var fullName : String {
    "3GPP \(type) \(name) V\(String(rel)).\(rev) (\(date))\n\(desp)\n(Release \(String(rel)))"
  }
}
