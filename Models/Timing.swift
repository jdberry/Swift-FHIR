//
//  Timing.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (Timing.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A timing schedule that specifies an event that may occur multiple times.
 *
 *  Specifies an event that may occur multiple times. Timing schedules are used for to record when things are expected
 *  or requested to occur.
 */
public class Timing: FHIRElement
{
	override public class var resourceName: String {
		get { return "Timing" }
	}
	
	/// When the event occurs
	public var event: [Period]?
	
	/// Only if there is none or one event
	public var repeat: TimingRepeat?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["event"] as? [JSONDictionary] {
				self.event = Period.from(val, owner: self) as? [Period]
			}
			if let val = js["repeat"] as? JSONDictionary {
				self.repeat = TimingRepeat(json: val, owner: self)
			}
		}
	}
}


/**
 *  Only if there is none or one event.
 *
 *  Identifies a repeating pattern to the intended time periods.
 */
public class TimingRepeat: FHIRElement
{
	override public class var resourceName: String {
		get { return "TimingRepeat" }
	}
	
	/// Number of times to repeat
	public var count: Int?
	
	/// Repeating or event-related duration
	public var duration: NSDecimalNumber?
	
	/// When to stop repeats
	public var end: DateTime?
	
	/// Event occurs frequency times per duration
	public var frequency: Int?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM)
	public var units: String?
	
	/// HS | WAKE | AC | ACM | ACD | ACV | PC | PCM | PCD | PCV - common life events
	public var when: String?
	
	public convenience init(duration: NSDecimalNumber?, units: String?) {
		self.init(json: nil)
		if nil != duration {
			self.duration = duration
		}
		if nil != units {
			self.units = units
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["count"] as? Int {
				self.count = val
			}
			if let val = js["duration"] as? NSNumber {
				self.duration = NSDecimalNumber(json: val)
			}
			if let val = js["end"] as? String {
				self.end = DateTime(string: val)
			}
			if let val = js["frequency"] as? Int {
				self.frequency = val
			}
			if let val = js["units"] as? String {
				self.units = val
			}
			if let val = js["when"] as? String {
				self.when = val
			}
		}
	}
}

