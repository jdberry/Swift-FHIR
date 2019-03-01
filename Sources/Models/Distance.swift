//
//  Distance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Distance) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
 *  A measure of distance.
 *
 *  There SHALL be a code if there is a value and it SHALL be an expression of length.  If system is present, it SHALL
 *  be UCUM.
 */
open class Distance: Quantity {
	override open class var resourceType: String {
		get { return "Distance" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

