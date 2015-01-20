//
//  OrderTests.swift
//  OrderTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OrderTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Order? {
		let json = readJSONFile(filename)
		let instance = Order(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrder1() {
		let inst = instantiateFrom("order-example-f201-physiotherapy.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Order instance")
		
		XCTAssertEqual(inst!.date!.description, "2013-03-05T12:00:00+01:00")
		XCTAssertEqual(inst!.detail![0].display!, "Consultation, not yet developed")
		XCTAssertEqual(inst!.reasonCodeableConcept!.text!, "It concerns a one-off order for consultation in order to evaluate the stairs walking ability of Roel.")
		XCTAssertEqual(inst!.source!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst!.target!.display!, "Juri van Gelder")
		XCTAssertEqual(inst!.target!.reference!, "Practitioner/f203")
		XCTAssertEqual(inst!.when!.code!.coding![0].code!, "394848005")
		XCTAssertEqual(inst!.when!.code!.coding![0].display!, "Normal priority")
		XCTAssertEqual(inst!.when!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testOrder2() {
		let inst = instantiateFrom("order-example-f201-physiotherapy.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Order instance")
		
		XCTAssertEqual(inst!.date!.description, "2013-03-05T12:00:00+01:00")
		XCTAssertEqual(inst!.detail![0].display!, "Consultation, not yet developed")
		XCTAssertEqual(inst!.reasonCodeableConcept!.text!, "It concerns a one-off order for consultation in order to evaluate the stairs walking ability of Roel.")
		XCTAssertEqual(inst!.source!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst!.target!.display!, "Juri van Gelder")
		XCTAssertEqual(inst!.target!.reference!, "Practitioner/f203")
		XCTAssertEqual(inst!.when!.code!.coding![0].code!, "394848005")
		XCTAssertEqual(inst!.when!.code!.coding![0].display!, "Normal priority")
		XCTAssertEqual(inst!.when!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testOrder3() {
		let inst = instantiateFrom("order-example-f201-physiotherapy.json")
		XCTAssertNotNil(inst, "Must have instantiated a Order instance")
		
		XCTAssertEqual(inst!.date!.description, "2013-03-05T12:00:00+01:00")
		XCTAssertEqual(inst!.detail![0].display!, "Consultation, not yet developed")
		XCTAssertEqual(inst!.reasonCodeableConcept!.text!, "It concerns a one-off order for consultation in order to evaluate the stairs walking ability of Roel.")
		XCTAssertEqual(inst!.source!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst!.target!.display!, "Juri van Gelder")
		XCTAssertEqual(inst!.target!.reference!, "Practitioner/f203")
		XCTAssertEqual(inst!.when!.code!.coding![0].code!, "394848005")
		XCTAssertEqual(inst!.when!.code!.coding![0].display!, "Normal priority")
		XCTAssertEqual(inst!.when!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testOrder4() {
		let inst = instantiateFrom("order-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Order instance")
		
		XCTAssertEqual(inst!.date!.description, "2012-12-28T09:03:04+11:00")
		XCTAssertEqual(inst!.detail![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst!.reasonCodeableConcept!.text!, "Standard admission testing")
		XCTAssertEqual(inst!.source!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/pat2")
		XCTAssertEqual(inst!.when!.code!.coding![0].code!, "today")
		XCTAssertEqual(inst!.when!.code!.coding![0].system!.absoluteString!, "http://acme.com/codes/request-priority")
	}
	
	func testOrder5() {
		let inst = instantiateFrom("order-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Order instance")
		
		XCTAssertEqual(inst!.date!.description, "2012-12-28T09:03:04+11:00")
		XCTAssertEqual(inst!.detail![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst!.reasonCodeableConcept!.text!, "Standard admission testing")
		XCTAssertEqual(inst!.source!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/pat2")
		XCTAssertEqual(inst!.when!.code!.coding![0].code!, "today")
		XCTAssertEqual(inst!.when!.code!.coding![0].system!.absoluteString!, "http://acme.com/codes/request-priority")
	}
}
