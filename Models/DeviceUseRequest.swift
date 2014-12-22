//
//  DeviceUseRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (deviceuserequest.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Request for device use.
 *
 *  Represents a request for the use of a device.
 */
public class DeviceUseRequest: FHIRResource
{
	override public class var resourceName: String {
		get { return "DeviceUseRequest" }
	}
	
	/// Target body site
	public var bodySite: [CodeableConcept]?
	
	/// Device requested
	public var device: Reference?
	
	/// Encounter motivating request
	public var encounter: Reference?
	
	/// Request identifier
	public var identifier: [Identifier]?
	
	/// Reason for request
	public var indication: [CodeableConcept]?
	
	/// Notes or comments
	public var notes: [String]?
	
	/// When ordered
	public var orderedOn: NSDate?
	
	/// routine | urgent | stat | asap
	public var priority: String?
	
	/// PRN
	public var prnReason: [CodeableConcept]?
	
	/// When recorded
	public var recordedOn: NSDate?
	
	/// proposed | planned | requested | received | accepted | in progress | completed | suspended | rejected | aborted
	public var status: String?
	
	/// Focus of request
	public var subject: Reference?
	
	/// Schedule for use
	public var timingDateTime: NSDate?
	
	/// Schedule for use
	public var timingPeriod: Period?
	
	/// Schedule for use
	public var timingTiming: Timing?
	
	public convenience init(device: Reference?, subject: Reference?) {
		self.init(json: nil)
		if nil != device {
			self.device = device
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySite"] as? [NSDictionary] {
				self.bodySite = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["device"] as? NSDictionary {
				self.device = Reference(json: val, owner: self)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indication"] as? [NSDictionary] {
				self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["notes"] as? [String] {
				self.notes = val
			}
			if let val = js["orderedOn"] as? String {
				self.orderedOn = NSDate(json: val)
			}
			if let val = js["priority"] as? String {
				self.priority = val
			}
			if let val = js["prnReason"] as? [NSDictionary] {
				self.prnReason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["recordedOn"] as? String {
				self.recordedOn = NSDate(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["timingDateTime"] as? String {
				self.timingDateTime = NSDate(json: val)
			}
			if let val = js["timingPeriod"] as? NSDictionary {
				self.timingPeriod = Period(json: val, owner: self)
			}
			if let val = js["timingTiming"] as? NSDictionary {
				self.timingTiming = Timing(json: val, owner: self)
			}
		}
	}
}

