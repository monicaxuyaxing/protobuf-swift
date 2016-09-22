// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_import_lite.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public extension ProtobufUnittestImport{}

public extension ProtobufUnittestImport {
  public struct UnittestImportLiteRoot {
    public static let `default` = UnittestImportLiteRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
      ProtobufUnittestImport.UnittestImportPublicLiteRoot.default.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  public enum ImportEnumLite:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case importLiteFoo = 7
    case importLiteBar = 8
    case importLiteBaz = 9
    public func toString() -> String {
      switch self {
      case .importLiteFoo: return "IMPORT_LITE_FOO"
      case .importLiteBar: return "IMPORT_LITE_BAR"
      case .importLiteBaz: return "IMPORT_LITE_BAZ"
      }
    }
    public static func fromString(str:String) throws -> ProtobufUnittestImport.ImportEnumLite {
      switch str {
      case "IMPORT_LITE_FOO":  return .importLiteFoo
      case "IMPORT_LITE_BAR":  return .importLiteBar
      case "IMPORT_LITE_BAZ":  return .importLiteBaz
      default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
      switch self {
      case .importLiteFoo: return ".importLiteFoo"
      case .importLiteBar: return ".importLiteBar"
      case .importLiteBaz: return ".importLiteBaz"
      }
    }
  }

  //Enum type declaration end 

  final public class ImportMessageLite : GeneratedMessage {

    public static func == (lhs: ProtobufUnittestImport.ImportMessageLite, rhs: ProtobufUnittestImport.ImportMessageLite) -> Bool {
      if (lhs === rhs) {
        return true
      }
      var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
      fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
      fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
      return fieldCheck
    }

    public fileprivate(set) var d:Int32 = Int32(0)
    public fileprivate(set) var hasD:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasD {
        try codedOutputStream.writeInt32(fieldNumber: 1, value:d)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasD {
        serialize_size += d.computeInt32Size(fieldNumber: 1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> ProtobufUnittestImport.ImportMessageLite.Builder {
      return ProtobufUnittestImport.ImportMessageLite.classBuilder() as! ProtobufUnittestImport.ImportMessageLite.Builder
    }
    public func getBuilder() -> ProtobufUnittestImport.ImportMessageLite.Builder {
      return classBuilder() as! ProtobufUnittestImport.ImportMessageLite.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return ProtobufUnittestImport.ImportMessageLite.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return ProtobufUnittestImport.ImportMessageLite.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
      return try ProtobufUnittestImport.ImportMessageLite.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittestImport.ImportMessageLite) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
      return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if hasD {
        jsonMap["d"] = Int(d)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasD {
        output += "\(indent) d: \(d) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasD {
               hashCode = (hashCode &* 31) &+ d.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "ProtobufUnittestImport.ImportMessageLite"
    }
    override public func className() -> String {
        return "ProtobufUnittestImport.ImportMessageLite"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      fileprivate var builderResult:ProtobufUnittestImport.ImportMessageLite = ProtobufUnittestImport.ImportMessageLite()
      public func getMessage() -> ProtobufUnittestImport.ImportMessageLite {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasD:Bool {
           get {
                return builderResult.hasD
           }
      }
      public var d:Int32 {
           get {
                return builderResult.d
           }
           set (value) {
               builderResult.hasD = true
               builderResult.d = value
           }
      }
      @discardableResult
      public func setD(_ value:Int32) -> ProtobufUnittestImport.ImportMessageLite.Builder {
        self.d = value
        return self
      }
      @discardableResult
      public func clearD() -> ProtobufUnittestImport.ImportMessageLite.Builder{
           builderResult.hasD = false
           builderResult.d = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      @discardableResult
      override public func clear() -> ProtobufUnittestImport.ImportMessageLite.Builder {
        builderResult = ProtobufUnittestImport.ImportMessageLite()
        return self
      }
      override public func clone() throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        return try ProtobufUnittestImport.ImportMessageLite.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> ProtobufUnittestImport.ImportMessageLite {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittestImport.ImportMessageLite {
        let returnMe:ProtobufUnittestImport.ImportMessageLite = builderResult
        return returnMe
      }
      @discardableResult
      public func mergeFrom(other:ProtobufUnittestImport.ImportMessageLite) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        if other == ProtobufUnittestImport.ImportMessageLite() {
         return self
        }
        if other.hasD {
             d = other.d
        }
        try merge(unknownField: other.unknownFields)
        return self
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            d = try codedInputStream.readInt32()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        let resultDecodedBuilder = ProtobufUnittestImport.ImportMessageLite.Builder()
        if let jsonValueD = jsonMap["d"] as? Int {
          resultDecodedBuilder.d = Int32(jsonValueD)
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try ProtobufUnittestImport.ImportMessageLite.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension ProtobufUnittestImport.ImportMessageLite: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<ProtobufUnittestImport.ImportMessageLite> {
    var mergedArray = Array<ProtobufUnittestImport.ImportMessageLite>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.ImportMessageLite? {
    return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> ProtobufUnittestImport.ImportMessageLite {
    return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFrom(data: data, extensionRegistry:ProtobufUnittestImport.UnittestImportLiteRoot.default.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessageLite {
    return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.ImportMessageLite {
    return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessageLite {
    return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.ImportMessageLite {
    return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessageLite {
    return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
