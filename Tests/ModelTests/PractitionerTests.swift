//
//  PractitionerTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PractitionerTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Practitioner {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Practitioner {
		let instance = SwiftFHIR.Practitioner(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPractitioner1() {
		do {
			let instance = try runPractitioner1()
			try runPractitioner1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f203-jvg.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.birthDate?.description, "1983-04-20")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "12345678903")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "https://www.bigregister.nl/")
		XCTAssertEqual(inst.identifier?[1].type?.text, "BIG-nummer")
		XCTAssertEqual(inst.identifier?[1].use, "official")
		XCTAssertEqual(inst.identifier?[1].value, "12345678903")
		XCTAssertEqual(inst.name?.text, "Juri van Gelder")
		XCTAssertEqual(inst.name?.use, "official")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.display, "AUMC")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.reference, "Organization/f201")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].code, "36682004")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].display, "Physical therapist")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].code, "410158009")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].display, "Assess physical therapist service")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPractitioner2() {
		do {
			let instance = try runPractitioner2()
			try runPractitioner2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f201-ab.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].line?[1], "C4 - Automatisering")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.birthDate?.description, "1956-12-24")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "12345678901")
		XCTAssertEqual(inst.name?.family?[0], "Bronsig")
		XCTAssertEqual(inst.name?.given?[0], "Arend")
		XCTAssertEqual(inst.name?.prefix?[0], "Dr.")
		XCTAssertEqual(inst.name?.text, "Dokter Bronsig")
		XCTAssertEqual(inst.name?.use, "official")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.display, "AUMC")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.reference, "Organization/f201")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].code, "225304007")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].display, "Implementation of planned interventions")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].code, "310512001")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].display, "Medical oncologist")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].code, "41672002")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].display, "Pulmonologist")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPractitioner3() {
		do {
			let instance = try runPractitioner3()
			try runPractitioner3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f202-lm.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].line?[1], "C4 - Automatisering")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.birthDate?.description, "1960-06-12")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "12345678902")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "https://www.bigregister.nl/")
		XCTAssertEqual(inst.identifier?[1].type?.text, "BIG-nummer")
		XCTAssertEqual(inst.identifier?[1].use, "official")
		XCTAssertEqual(inst.identifier?[1].value, "12345678902")
		XCTAssertEqual(inst.name?.family?[0], "Maas")
		XCTAssertEqual(inst.name?.given?[0], "Luigi")
		XCTAssertEqual(inst.name?.prefix?[0], "Dr.")
		XCTAssertEqual(inst.name?.text, "Luigi Maas")
		XCTAssertEqual(inst.name?.use, "official")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.display, "AUMC")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.reference, "Organization/f201")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].code, "33526004")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].display, "Electronic laboratory reporting")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].code, "159285000")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].display, "Medical laboratory technician")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPractitioner4() {
		do {
			let instance = try runPractitioner4()
			try runPractitioner4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-xcda-author.json")
		
		XCTAssertEqual(inst.id, "xcda-author")
		XCTAssertEqual(inst.name?.family?[0], "Hippocrates")
		XCTAssertEqual(inst.name?.given?[0], "Harold")
		XCTAssertEqual(inst.name?.suffix?[0], "MD")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPractitioner5() {
		do {
			let instance = try runPractitioner5()
			try runPractitioner5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f003-mv.json")
		
		XCTAssertEqual(inst.address?[0].city, "Amsterdam")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "1105 AZ")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.birthDate?.description, "1963-07-01")
		XCTAssertEqual(inst.communication?[0].coding?[0].code, "nl")
		XCTAssertEqual(inst.communication?[0].coding?[0].display, "Dutch")
		XCTAssertEqual(inst.communication?[0].coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "846100293")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, "usual")
		XCTAssertEqual(inst.identifier?[1].value, "243HID3RT938")
		XCTAssertEqual(inst.name?.family?[0], "Versteegh")
		XCTAssertEqual(inst.name?.given?[0], "Marc")
		XCTAssertEqual(inst.name?.suffix?[0], "MD")
		XCTAssertEqual(inst.name?.use, "official")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.display, "BMC")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].code, "01.000")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].display, "Arts")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole?[0].role?.text, "Care role")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].code, "01.011")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].display, "Cardiothoracal surgery")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].text, "specialization")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "0205562431")
		XCTAssertEqual(inst.telecom?[1].system, "email")
		XCTAssertEqual(inst.telecom?[1].use, "work")
		XCTAssertEqual(inst.telecom?[1].value, "m.versteegh@bmc.nl")
		XCTAssertEqual(inst.telecom?[2].system, "fax")
		XCTAssertEqual(inst.telecom?[2].use, "work")
		XCTAssertEqual(inst.telecom?[2].value, "0205662948")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPractitioner6() {
		do {
			let instance = try runPractitioner6()
			try runPractitioner6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f002-pv.json")
		
		XCTAssertEqual(inst.address?[0].city, "Den Burg")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.birthDate?.description, "1979-04-29")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "730291637")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, "usual")
		XCTAssertEqual(inst.identifier?[1].value, "174BIP3JH438")
		XCTAssertEqual(inst.name?.family?[0], "Voigt")
		XCTAssertEqual(inst.name?.given?[0], "Pieter")
		XCTAssertEqual(inst.name?.suffix?[0], "MD")
		XCTAssertEqual(inst.name?.use, "official")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.display, "BMC")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].code, "01.000")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].display, "Arts")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole?[0].role?.text, "Care role")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].code, "01.011")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].display, "Cardiothoracal surgery")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].text, "specialization")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "0205569336")
		XCTAssertEqual(inst.telecom?[1].system, "email")
		XCTAssertEqual(inst.telecom?[1].use, "work")
		XCTAssertEqual(inst.telecom?[1].value, "p.voigt@bmc.nl")
		XCTAssertEqual(inst.telecom?[2].system, "fax")
		XCTAssertEqual(inst.telecom?[2].use, "work")
		XCTAssertEqual(inst.telecom?[2].value, "0205669382")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPractitioner7() {
		do {
			let instance = try runPractitioner7()
			try runPractitioner7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org/practitioners")
		XCTAssertEqual(inst.identifier?[0].value, "23")
		XCTAssertEqual(inst.name?.family?[0], "Careful")
		XCTAssertEqual(inst.name?.given?[0], "Adam")
		XCTAssertEqual(inst.name?.prefix?[0], "Dr")
		XCTAssertEqual(inst.practitionerRole?[0].healthcareService?[0].reference, "HealthcareService/example")
		XCTAssertEqual(inst.practitionerRole?[0].location?[0].display, "South Wing, second floor")
		XCTAssertEqual(inst.practitionerRole?[0].location?[0].reference, "Location/1")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole?[0].period?.end?.description, "2012-03-31")
		XCTAssertEqual(inst.practitionerRole?[0].period?.start?.description, "2012-01-01")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].code, "RP")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0286")
		XCTAssertEqual(inst.qualification?[0].code?.text, "Bachelor of Science")
		XCTAssertEqual(inst.qualification?[0].identifier?[0].system?.absoluteString, "http://example.org/UniversityIdentifier")
		XCTAssertEqual(inst.qualification?[0].identifier?[0].value, "12345")
		XCTAssertEqual(inst.qualification?[0].issuer?.display, "Example University")
		XCTAssertEqual(inst.qualification?[0].period?.start?.description, "1995")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPractitioner8() {
		do {
			let instance = try runPractitioner8()
			try runPractitioner8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f007-sh.json")
		
		XCTAssertEqual(inst.address?[0].city, "Den Burg")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.birthDate?.description, "1971-11-07")
		XCTAssertEqual(inst.gender, "female")
		XCTAssertEqual(inst.id, "f007")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "874635264")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, "usual")
		XCTAssertEqual(inst.identifier?[1].value, "567IUI51C154")
		XCTAssertEqual(inst.name?.family?[0], "Heps")
		XCTAssertEqual(inst.name?.given?[0], "Simone")
		XCTAssertEqual(inst.name?.suffix?[0], "MD")
		XCTAssertEqual(inst.name?.use, "official")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.display, "BMC")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].code, "01.000")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].display, "Arts")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole?[0].role?.text, "Care role")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].code, "01.015")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].display, "Physician")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].text, "specialization")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "020556936")
		XCTAssertEqual(inst.telecom?[1].system, "email")
		XCTAssertEqual(inst.telecom?[1].use, "work")
		XCTAssertEqual(inst.telecom?[1].value, "S.M.Heps@bmc.nl")
		XCTAssertEqual(inst.telecom?[2].system, "fax")
		XCTAssertEqual(inst.telecom?[2].use, "work")
		XCTAssertEqual(inst.telecom?[2].value, "0205669283")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPractitioner9() {
		do {
			let instance = try runPractitioner9()
			try runPractitioner9(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner9(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f204-ce.json")
		
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.birthDate?.description, "1967-11-05")
		XCTAssertEqual(inst.gender, "female")
		XCTAssertEqual(inst.id, "f204")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "12345678904")
		XCTAssertEqual(inst.name?.text, "Carla Espinosa")
		XCTAssertEqual(inst.name?.use, "usual")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.display, "AUMC")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.reference, "Organization/f201")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].code, "224565004")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].display, "Renal nurse")
		XCTAssertEqual(inst.practitionerRole?[0].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].code, "9632001")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].display, "Nursing procedure")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "+31715262169")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPractitioner10() {
		do {
			let instance = try runPractitioner10()
			try runPractitioner10(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitioner10(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-xcda1.json")
		
		XCTAssertEqual(inst.id, "xcda1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://healthcare.example.org/identifiers/staff")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "D234123")
		XCTAssertEqual(inst.name?.family?[0], "Dopplemeyer")
		XCTAssertEqual(inst.name?.given?[0], "Sherry")
		XCTAssertEqual(inst.practitionerRole?[0].managingOrganization?.display, "Cleveland Clinic")
		XCTAssertEqual(inst.practitionerRole?[0].role?.text, "Primary Surgon")
		XCTAssertEqual(inst.practitionerRole?[0].specialty?[0].text, "Orthopedic")
		XCTAssertEqual(inst.telecom?[0].system, "email")
		XCTAssertEqual(inst.telecom?[0].value, "john.doe@healthcare.example.org")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
