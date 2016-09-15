//
//  Signature.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Signature) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A digital Signature - XML DigSig, JWT, Graphical image of signature, etc..
 *
 *  A digital signature along with supporting context. The signature may be electronic/cryptographic in nature, or a
 *  graphical image representing a hand-written signature, or a signature process. Different Signature approaches have
 *  different utilities.
 */
open class Signature: Element {
	override open class var resourceType: String {
		get { return "Signature" }
	}
	
	/// The actual signature content (XML DigSig. JWT, picture, etc.).
	public var blob: Base64Binary?
	
	/// The technical format of the signature.
	public var contentType: String?
	
	/// The party represented.
	public var onBehalfOfReference: Reference?
	
	/// The party represented.
	public var onBehalfOfUri: URL?
	
	/// Indication of the reason the entity signed the object(s).
	public var type: [Coding]?
	
	/// When the signature was created.
	public var when: Instant?
	
	/// Who signed.
	public var whoReference: Reference?
	
	/// Who signed.
	public var whoUri: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: [Coding], when: Instant, whoReference: Reference, whoUri: URL) {
		self.init(json: nil)
		self.type = type
		self.when = when
		self.whoReference = whoReference
		self.whoUri = whoUri
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["blob"] {
				presentKeys.insert("blob")
				if let val = exist as? String {
					self.blob = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "blob", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["contentType"] {
				presentKeys.insert("contentType")
				if let val = exist as? String {
					self.contentType = val
				}
				else {
					errors.append(FHIRJSONError(key: "contentType", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["onBehalfOfReference"] {
				presentKeys.insert("onBehalfOfReference")
				if let val = exist as? FHIRJSON {
					self.onBehalfOfReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "onBehalfOfReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["onBehalfOfUri"] {
				presentKeys.insert("onBehalfOfUri")
				if let val = exist as? String {
					self.onBehalfOfUri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "onBehalfOfUri", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["when"] {
				presentKeys.insert("when")
				if let val = exist as? String {
					self.when = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "when", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "when"))
			}
			if let exist = js["whoReference"] {
				presentKeys.insert("whoReference")
				if let val = exist as? FHIRJSON {
					self.whoReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "whoReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["whoUri"] {
				presentKeys.insert("whoUri")
				if let val = exist as? String {
					self.whoUri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "whoUri", wants: String.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.whoUri && nil == self.whoReference {
				errors.append(FHIRJSONError(key: "who*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let blob = self.blob {
			json["blob"] = blob.asJSON()
		}
		if let contentType = self.contentType {
			json["contentType"] = contentType.asJSON()
		}
		if let onBehalfOfReference = self.onBehalfOfReference {
			json["onBehalfOfReference"] = onBehalfOfReference.asJSON()
		}
		if let onBehalfOfUri = self.onBehalfOfUri {
			json["onBehalfOfUri"] = onBehalfOfUri.asJSON()
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON() }
		}
		if let when = self.when {
			json["when"] = when.asJSON()
		}
		if let whoReference = self.whoReference {
			json["whoReference"] = whoReference.asJSON()
		}
		if let whoUri = self.whoUri {
			json["whoUri"] = whoUri.asJSON()
		}
		
		return json
	}
}

