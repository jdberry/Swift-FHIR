//
//  PatientTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PatientTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Patient {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Patient {
		let instance = SwiftFHIR.Patient(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPatient1() {
		do {
			let instance = try runPatient1()
			try runPatient1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-xds.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "Metropolis")
		XCTAssertEqual(inst.address?[0].country, "USA")
		XCTAssertEqual(inst.address?[0].line?[0], "100 Main St")
		XCTAssertEqual(inst.address?[0].postalCode, "44130")
		XCTAssertEqual(inst.address?[0].state, "Il")
		XCTAssertEqual(inst.birthDate?.description, "1956-05-27")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "xds")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.2.3.4.5")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "89765a87b")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/2")
		XCTAssertEqual(inst.name?[0].family?[0], "Doe")
		XCTAssertEqual(inst.name?[0].given?[0], "John")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPatient2() {
		do {
			let instance = try runPatient2()
			try runPatient2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-f001-pieter.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "Amsterdam")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Van Egmondkade 23")
		XCTAssertEqual(inst.address?[0].postalCode, "1024 RJ")
		XCTAssertEqual(inst.address?[0].use, "home")
		XCTAssertEqual(inst.birthDate?.description, "1944-11-17")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].code, "nl")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].display, "Dutch")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.communication?[0].language?.text, "Nederlands")
		XCTAssertTrue(inst.communication?[0].preferred ?? false)
		XCTAssertEqual(inst.contact?[0].name?.family?[0], "Abels")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Sarah")
		XCTAssertEqual(inst.contact?[0].name?.use, "usual")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "partner")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, "mobile")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "0690383372")
		XCTAssertFalse(inst.deceasedBoolean ?? true)
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "738472983")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, "usual")
		XCTAssertEqual(inst.managingOrganization?.display, "Burgers University Medical Centre")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].code, "M")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].display, "Married")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/MaritalStatus")
		XCTAssertEqual(inst.maritalStatus?.text, "Getrouwd")
		XCTAssertTrue(inst.multipleBirthBoolean ?? false)
		XCTAssertEqual(inst.name?[0].family?[0], "van de Heuvel")
		XCTAssertEqual(inst.name?[0].given?[0], "Pieter")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MSc")
		XCTAssertEqual(inst.name?[0].use, "usual")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "mobile")
		XCTAssertEqual(inst.telecom?[0].value, "0648352638")
		XCTAssertEqual(inst.telecom?[1].system, "email")
		XCTAssertEqual(inst.telecom?[1].use, "home")
		XCTAssertEqual(inst.telecom?[1].value, "p.heuvel@gmail.com")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPatient3() {
		do {
			let instance = try runPatient3()
			try runPatient3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-d.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.birthDate?.description, "1982-08-02")
		XCTAssertTrue(inst.deceasedBoolean ?? false)
		XCTAssertEqual(inst.gender, "female")
		XCTAssertEqual(inst.id, "pat4")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "123458")
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family?[0], "Notsowell")
		XCTAssertEqual(inst.name?[0].given?[0], "Sandy")
		XCTAssertEqual(inst.name?[0].use, "official")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPatient4() {
		do {
			let instance = try runPatient4()
			try runPatient4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-b.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.gender, "other")
		XCTAssertEqual(inst.id, "pat2")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "123456")
		XCTAssertEqual(inst.link?[0].other?.reference, "Patient/pat1")
		XCTAssertEqual(inst.link?[0].type, "seealso")
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family?[0], "Donald")
		XCTAssertEqual(inst.name?[0].given?[0], "Duck")
		XCTAssertEqual(inst.name?[0].given?[1], "D")
		XCTAssertEqual(inst.name?[0].use, "official")
		XCTAssertEqual(inst.photo?[0].contentType, "image/gif")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPatient5() {
		do {
			let instance = try runPatient5()
			try runPatient5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-c.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.birthDate?.description, "1982-01-23")
		XCTAssertEqual(inst.deceasedDateTime?.description, "2015-02-14T13:42:00+10:00")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "pat3")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "123457")
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family?[0], "Notsowell")
		XCTAssertEqual(inst.name?[0].given?[0], "Simon")
		XCTAssertEqual(inst.name?[0].use, "official")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPatient6() {
		do {
			let instance = try runPatient6()
			try runPatient6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-ihe-pcd.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.id, "ihe-pcd")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Internal Identifier")
		XCTAssertEqual(inst.identifier?[0].value, "AB60001")
		XCTAssertEqual(inst.name?[0].family?[0], "BROOKS")
		XCTAssertEqual(inst.name?[0].given?[0], "ALBERT")
		XCTAssertEqual(inst.text?.div, "<div>Albert Brooks, Id: AB60001</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPatient7() {
		do {
			let instance = try runPatient7()
			try runPatient7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "PleasantVille")
		XCTAssertEqual(inst.address?[0].district, "Rainbow")
		XCTAssertEqual(inst.address?[0].line?[0], "534 Erewhon St")
		XCTAssertEqual(inst.address?[0].period?.start?.description, "1974-12-25")
		XCTAssertEqual(inst.address?[0].postalCode, "3999")
		XCTAssertEqual(inst.address?[0].state, "Vic")
		XCTAssertEqual(inst.address?[0].type, "both")
		XCTAssertEqual(inst.address?[0].use, "home")
		XCTAssertEqual(inst.birthDate?.description, "1974-12-25")
		XCTAssertEqual(inst.contact?[0].gender, "female")
		XCTAssertEqual(inst.contact?[0].name?.family?[0], "du")
		XCTAssertEqual(inst.contact?[0].name?.family?[1], "Marché")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Bénédicte")
		XCTAssertEqual(inst.contact?[0].period?.start?.description, "2012")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "partner")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "+33 (237) 998327")
		XCTAssertFalse(inst.deceasedBoolean ?? true)
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Acme Healthcare")
		XCTAssertEqual(inst.identifier?[0].period?.start?.description, "2001-05-06")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.2.36.146.595.217.0.1")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family?[0], "Chalmers")
		XCTAssertEqual(inst.name?[0].given?[0], "Peter")
		XCTAssertEqual(inst.name?[0].given?[1], "James")
		XCTAssertEqual(inst.name?[0].use, "official")
		XCTAssertEqual(inst.name?[1].given?[0], "Jim")
		XCTAssertEqual(inst.name?[1].use, "usual")
		XCTAssertEqual(inst.telecom?[0].use, "home")
		XCTAssertEqual(inst.telecom?[1].system, "phone")
		XCTAssertEqual(inst.telecom?[1].use, "work")
		XCTAssertEqual(inst.telecom?[1].value, "(03) 5555 6473")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPatient8() {
		do {
			let instance = try runPatient8()
			try runPatient8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-proband.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.birthDate?.description, "1966-04-04")
		XCTAssertFalse(inst.deceasedBoolean ?? true)
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/us-core-race")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "2106-3")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].display, "white")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.6.238")
		XCTAssertEqual(inst.gender, "female")
		XCTAssertEqual(inst.id, "proband")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Boston Massachesetts General Hospital")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.6.117")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Computer-Stored Abulatory Records (COSTAR)")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "999999999")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPatient9() {
		do {
			let instance = try runPatient9()
			try runPatient9(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient9(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-f201-roel.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "Amsterdam")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Bos en Lommerplein 280")
		XCTAssertEqual(inst.address?[0].postalCode, "1055RW")
		XCTAssertEqual(inst.address?[0].use, "home")
		XCTAssertEqual(inst.birthDate?.description, "1960-03-13")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].code, "nl-NL")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].display, "Dutch")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertTrue(inst.communication?[0].preferred ?? false)
		XCTAssertEqual(inst.contact?[0].name?.text, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.contact?[0].name?.use, "usual")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "127850001")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].display, "Wife")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].code, "partner")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].system?.absoluteString, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, "home")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "+31201234567")
		XCTAssertFalse(inst.deceasedBoolean ?? true)
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[0].type?.text, "BSN")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "123456789")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].type?.text, "BSN")
		XCTAssertEqual(inst.identifier?[1].use, "official")
		XCTAssertEqual(inst.identifier?[1].value, "123456789")
		XCTAssertEqual(inst.managingOrganization?.display, "AUMC")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f201")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].code, "36629006")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].display, "Legally married")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.maritalStatus?.coding?[1].code, "M")
		XCTAssertEqual(inst.maritalStatus?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/v3/MaritalStatus")
		XCTAssertFalse(inst.multipleBirthBoolean ?? true)
		XCTAssertEqual(inst.name?[0].family?[0], "Bor")
		XCTAssertEqual(inst.name?[0].given?[0], "Roelof Olaf")
		XCTAssertEqual(inst.name?[0].prefix?[0], "Drs.")
		XCTAssertEqual(inst.name?[0].suffix?[0], "PDEng.")
		XCTAssertEqual(inst.name?[0].text, "Roel")
		XCTAssertEqual(inst.name?[0].use, "official")
		XCTAssertEqual(inst.photo?[0].contentType, "image/jpeg")
		XCTAssertEqual(inst.photo?[0].url?.absoluteString, "Binary/f006")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "mobile")
		XCTAssertEqual(inst.telecom?[0].value, "+31612345678")
		XCTAssertEqual(inst.telecom?[1].system, "phone")
		XCTAssertEqual(inst.telecom?[1].use, "home")
		XCTAssertEqual(inst.telecom?[1].value, "+31201234567")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPatient10() {
		do {
			let instance = try runPatient10()
			try runPatient10(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw")
		}
	}
	
	@discardableResult
	func runPatient10(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-xcda.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.birthDate?.description, "1932-09-24")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "xcda")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.managingOrganization?.display, "Good Health Clinic")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.name?[0].family?[0], "Levin")
		XCTAssertEqual(inst.name?[0].given?[0], "Henry")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
