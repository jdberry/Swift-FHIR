//
//  SupportingDocumentationTests.swift
//  SupportingDocumentationTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SupportingDocumentationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> SupportingDocumentation? {
		let json = readJSONFile(filename)
		let instance = SupportingDocumentation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSupportingDocumentation1() {
		let inst = instantiateFrom("supportingdocumentation-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SupportingDocumentation instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-09-21")
		XCTAssertEqual(inst!.detail![0].contentAttachment!.contentType!, "application/pdf")
		// Don't know how to create unit test for "detail![0].contentAttachment!.data!", which is a Base64Binary
		XCTAssertEqual(inst!.detail![0].contentAttachment!.title!, "accident notes 20100201.pdf")
		XCTAssertEqual(inst!.detail![0].dateTime!.description, "2010-02-01")
		XCTAssertEqual(inst!.detail![0].linkId!, 1)
		XCTAssertEqual(inst!.detail![1].contentAttachment!.contentType!, "application/pdf")
		// Don't know how to create unit test for "detail![1].contentAttachment!.hash!", which is a Base64Binary
		XCTAssertEqual(inst!.detail![1].contentAttachment!.size!, 104274)
		XCTAssertEqual(inst!.detail![1].contentAttachment!.url!.absoluteString!, "http://happyvalley.com/docs/AB12345")
		XCTAssertEqual(inst!.detail![1].dateTime!.description, "2010-02-01T10:57:34+01:00")
		XCTAssertEqual(inst!.detail![1].linkId!, 2)
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibility")
		XCTAssertEqual(inst!.identifier![0].value!, "52345")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
		XCTAssertEqual(inst!.target!.reference!, "Organization/2")
	}
	
	func testSupportingDocumentation2() {
		let inst = instantiateFrom("supportingdocumentation-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SupportingDocumentation instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-09-21")
		XCTAssertEqual(inst!.detail![0].contentAttachment!.contentType!, "application/pdf")
		// Don't know how to create unit test for "detail![0].contentAttachment!.data!", which is a Base64Binary
		XCTAssertEqual(inst!.detail![0].contentAttachment!.title!, "accident notes 20100201.pdf")
		XCTAssertEqual(inst!.detail![0].dateTime!.description, "2010-02-01")
		XCTAssertEqual(inst!.detail![0].linkId!, 1)
		XCTAssertEqual(inst!.detail![1].contentAttachment!.contentType!, "application/pdf")
		// Don't know how to create unit test for "detail![1].contentAttachment!.hash!", which is a Base64Binary
		XCTAssertEqual(inst!.detail![1].contentAttachment!.size!, 104274)
		XCTAssertEqual(inst!.detail![1].contentAttachment!.url!.absoluteString!, "http://happyvalley.com/docs/AB12345")
		XCTAssertEqual(inst!.detail![1].dateTime!.description, "2010-02-01T10:57:34+01:00")
		XCTAssertEqual(inst!.detail![1].linkId!, 2)
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibility")
		XCTAssertEqual(inst!.identifier![0].value!, "52345")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
		XCTAssertEqual(inst!.target!.reference!, "Organization/2")
	}
	
	func testSupportingDocumentation3() {
		let inst = instantiateFrom("supportingdocumentation-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a SupportingDocumentation instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-09-21")
		XCTAssertEqual(inst!.detail![0].contentAttachment!.contentType!, "application/pdf")
		// Don't know how to create unit test for "detail![0].contentAttachment!.data!", which is a Base64Binary
		XCTAssertEqual(inst!.detail![0].contentAttachment!.title!, "accident notes 20100201.pdf")
		XCTAssertEqual(inst!.detail![0].dateTime!.description, "2010-02-01")
		XCTAssertEqual(inst!.detail![0].linkId!, 1)
		XCTAssertEqual(inst!.detail![1].contentAttachment!.contentType!, "application/pdf")
		// Don't know how to create unit test for "detail![1].contentAttachment!.hash!", which is a Base64Binary
		XCTAssertEqual(inst!.detail![1].contentAttachment!.size!, 104274)
		XCTAssertEqual(inst!.detail![1].contentAttachment!.url!.absoluteString!, "http://happyvalley.com/docs/AB12345")
		XCTAssertEqual(inst!.detail![1].dateTime!.description, "2010-02-01T10:57:34+01:00")
		XCTAssertEqual(inst!.detail![1].linkId!, 2)
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibility")
		XCTAssertEqual(inst!.identifier![0].value!, "52345")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
		XCTAssertEqual(inst!.target!.reference!, "Organization/2")
	}
}
