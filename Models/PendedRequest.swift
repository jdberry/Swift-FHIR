//
//  PendedRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (pendedrequest.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  PendedRequest request.
 *
 *  This resource provides the request and response details for the resource for which the status is to be checked.
 */
public class PendedRequest: FHIRResource
{
	override public class var resourceName: String {
		get { return "PendedRequest" }
	}
	
	/// Creation date
	public var created: DateTime?
	
	/// Resource type(s) to exclude
	public var exclude: [String]?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Resource type(s) to include
	public var include: [String]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Period
	public var period: Period?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Request reference
	public var request: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Insurer
	public var target: Reference?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["exclude"] as? [String] {
				self.exclude = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["include"] as? [String] {
				self.include = val
			}
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? JSONDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
}

