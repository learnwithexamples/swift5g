import Foundation
public struct TableTitle {
  public let id : String
  public let name : String
  public init(id: String, name: String) {
    self.id = id
    self.name = name
  }
  public var fullName : String {
    "Table \(self.id): \(self.name)"
  }
}
