//
//  OrganizationTests.swift
//  OrganizationTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OrganizationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Organization? {
		let json = readJSONFile(filename)
		let instance = Organization(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrganization1() {
		let inst = instantiateFrom("organization-example-f001-burgers.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.address![0].city!, "Den Burg")
		XCTAssertEqual(inst!.address![0].country!, "NLD")
		XCTAssertEqual(inst!.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst!.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.address![1].city!, "Den Burg")
		XCTAssertEqual(inst!.address![1].country!, "NLD")
		XCTAssertEqual(inst!.address![1].line![0], "PO Box 2311")
		XCTAssertEqual(inst!.address![1].postalCode!, "9100 AA")
		XCTAssertEqual(inst!.address![1].use!, "work")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "PRESS")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 2334")
		XCTAssertEqual(inst!.contact![1].purpose!.coding![0].code!, "PATINF")
		XCTAssertEqual(inst!.contact![1].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![1].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![1].telecom![0].value!, "022-655 2335")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "91654")
		XCTAssertEqual(inst!.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.1")
		XCTAssertEqual(inst!.identifier![1].use!, "usual")
		XCTAssertEqual(inst!.identifier![1].value!, "17-0112278")
		XCTAssertEqual(inst!.name!, "Burgers University Medical Center")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 2300")
		XCTAssertEqual(inst!.type!.coding![0].code!, "V6")
		XCTAssertEqual(inst!.type!.coding![0].display!, "University Medical Hospital")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst!.type!.coding![1].code!, "prov")
		XCTAssertEqual(inst!.type!.coding![1].display!, "Healthcare Provider")
		XCTAssertEqual(inst!.type!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
	
	func testOrganization2() {
		let inst = instantiateFrom("organization-example-f001-burgers.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.address![0].city!, "Den Burg")
		XCTAssertEqual(inst!.address![0].country!, "NLD")
		XCTAssertEqual(inst!.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst!.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.address![1].city!, "Den Burg")
		XCTAssertEqual(inst!.address![1].country!, "NLD")
		XCTAssertEqual(inst!.address![1].line![0], "PO Box 2311")
		XCTAssertEqual(inst!.address![1].postalCode!, "9100 AA")
		XCTAssertEqual(inst!.address![1].use!, "work")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "PRESS")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 2334")
		XCTAssertEqual(inst!.contact![1].purpose!.coding![0].code!, "PATINF")
		XCTAssertEqual(inst!.contact![1].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![1].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![1].telecom![0].value!, "022-655 2335")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "91654")
		XCTAssertEqual(inst!.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.1")
		XCTAssertEqual(inst!.identifier![1].use!, "usual")
		XCTAssertEqual(inst!.identifier![1].value!, "17-0112278")
		XCTAssertEqual(inst!.name!, "Burgers University Medical Center")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 2300")
		XCTAssertEqual(inst!.type!.coding![0].code!, "V6")
		XCTAssertEqual(inst!.type!.coding![0].display!, "University Medical Hospital")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst!.type!.coding![1].code!, "prov")
		XCTAssertEqual(inst!.type!.coding![1].display!, "Healthcare Provider")
		XCTAssertEqual(inst!.type!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
	
	func testOrganization3() {
		let inst = instantiateFrom("organization-example-f001-burgers.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.address![0].city!, "Den Burg")
		XCTAssertEqual(inst!.address![0].country!, "NLD")
		XCTAssertEqual(inst!.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst!.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.address![1].city!, "Den Burg")
		XCTAssertEqual(inst!.address![1].country!, "NLD")
		XCTAssertEqual(inst!.address![1].line![0], "PO Box 2311")
		XCTAssertEqual(inst!.address![1].postalCode!, "9100 AA")
		XCTAssertEqual(inst!.address![1].use!, "work")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "PRESS")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 2334")
		XCTAssertEqual(inst!.contact![1].purpose!.coding![0].code!, "PATINF")
		XCTAssertEqual(inst!.contact![1].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![1].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![1].telecom![0].value!, "022-655 2335")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "91654")
		XCTAssertEqual(inst!.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.1")
		XCTAssertEqual(inst!.identifier![1].use!, "usual")
		XCTAssertEqual(inst!.identifier![1].value!, "17-0112278")
		XCTAssertEqual(inst!.name!, "Burgers University Medical Center")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 2300")
		XCTAssertEqual(inst!.type!.coding![0].code!, "V6")
		XCTAssertEqual(inst!.type!.coding![0].display!, "University Medical Hospital")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst!.type!.coding![1].code!, "prov")
		XCTAssertEqual(inst!.type!.coding![1].display!, "Healthcare Provider")
		XCTAssertEqual(inst!.type!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
	
	func testOrganization4() {
		let inst = instantiateFrom("organization-example-f002-burgers-card.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].line![0], "South Wing, floor 2")
		XCTAssertEqual(inst!.contact![0].address!.line![0], "South Wing, floor 2")
		XCTAssertEqual(inst!.contact![0].name!.text!, "mevr. D. de Haan")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "ADMIN")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 2321")
		XCTAssertEqual(inst!.contact![0].telecom![1].system!, "email")
		XCTAssertEqual(inst!.contact![0].telecom![1].value!, "cardio@burgersumc.nl")
		XCTAssertEqual(inst!.contact![0].telecom![2].system!, "fax")
		XCTAssertEqual(inst!.contact![0].telecom![2].value!, "022-655 2322")
		XCTAssertEqual(inst!.name!, "Burgers UMC Cardiology unit")
		XCTAssertEqual(inst!.partOf!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 2320")
		XCTAssertEqual(inst!.type!.coding![0].code!, "dept")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Hospital Department")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
	
	func testOrganization5() {
		let inst = instantiateFrom("organization-example-f002-burgers-card.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].line![0], "South Wing, floor 2")
		XCTAssertEqual(inst!.contact![0].address!.line![0], "South Wing, floor 2")
		XCTAssertEqual(inst!.contact![0].name!.text!, "mevr. D. de Haan")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "ADMIN")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 2321")
		XCTAssertEqual(inst!.contact![0].telecom![1].system!, "email")
		XCTAssertEqual(inst!.contact![0].telecom![1].value!, "cardio@burgersumc.nl")
		XCTAssertEqual(inst!.contact![0].telecom![2].system!, "fax")
		XCTAssertEqual(inst!.contact![0].telecom![2].value!, "022-655 2322")
		XCTAssertEqual(inst!.name!, "Burgers UMC Cardiology unit")
		XCTAssertEqual(inst!.partOf!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 2320")
		XCTAssertEqual(inst!.type!.coding![0].code!, "dept")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Hospital Department")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
	
	func testOrganization6() {
		let inst = instantiateFrom("organization-example-f003-burgers-ENT.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].line![0], "West Wing, floor 5")
		XCTAssertEqual(inst!.contact![0].address!.line![0], "West Wing, floor 5")
		XCTAssertEqual(inst!.contact![0].name!.text!, "mr. F. de Hond")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "ADMIN")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 7654")
		XCTAssertEqual(inst!.contact![0].telecom![1].system!, "email")
		XCTAssertEqual(inst!.contact![0].telecom![1].value!, "KNO@burgersumc.nl")
		XCTAssertEqual(inst!.contact![0].telecom![2].system!, "fax")
		XCTAssertEqual(inst!.contact![0].telecom![2].value!, "022-655 0998")
		XCTAssertEqual(inst!.name!, "Burgers UMC Ear,Nose,Throat unit")
		XCTAssertEqual(inst!.partOf!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 6780")
		XCTAssertEqual(inst!.type!.coding![0].code!, "dept")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Hospital Department")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
	
	func testOrganization7() {
		let inst = instantiateFrom("organization-example-f003-burgers-ENT.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].line![0], "West Wing, floor 5")
		XCTAssertEqual(inst!.contact![0].address!.line![0], "West Wing, floor 5")
		XCTAssertEqual(inst!.contact![0].name!.text!, "mr. F. de Hond")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "ADMIN")
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 7654")
		XCTAssertEqual(inst!.contact![0].telecom![1].system!, "email")
		XCTAssertEqual(inst!.contact![0].telecom![1].value!, "KNO@burgersumc.nl")
		XCTAssertEqual(inst!.contact![0].telecom![2].system!, "fax")
		XCTAssertEqual(inst!.contact![0].telecom![2].value!, "022-655 0998")
		XCTAssertEqual(inst!.name!, "Burgers UMC Ear,Nose,Throat unit")
		XCTAssertEqual(inst!.partOf!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 6780")
		XCTAssertEqual(inst!.type!.coding![0].code!, "dept")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Hospital Department")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
	
	func testOrganization8() {
		let inst = instantiateFrom("organization-example-f201-aumc.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].city!, "Den Helder")
		XCTAssertEqual(inst!.address![0].country!, "NLD")
		XCTAssertEqual(inst!.address![0].line![0], "Walvisbaai 3")
		XCTAssertEqual(inst!.address![0].postalCode!, "2333ZA")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.contact![0].address!.city!, "Den helder")
		XCTAssertEqual(inst!.contact![0].address!.country!, "NLD")
		XCTAssertEqual(inst!.contact![0].address!.line![0], "Walvisbaai 3")
		XCTAssertEqual(inst!.contact![0].address!.line![1], "Gebouw 2")
		XCTAssertEqual(inst!.contact![0].address!.postalCode!, "2333ZA")
		XCTAssertEqual(inst!.contact![0].name!.family![0], "Brand")
		XCTAssertEqual(inst!.contact![0].name!.given![0], "Ronald")
		XCTAssertEqual(inst!.contact![0].name!.prefix![0], "Prof.Dr.")
		XCTAssertEqual(inst!.contact![0].name!.text!, "Professor Brand")
		XCTAssertEqual(inst!.contact![0].name!.use!, "official")
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].telecom![0].use!, "work")
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "+31715269702")
		XCTAssertEqual(inst!.identifier![0].label!, "Zorginstelling naam")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://www.zorgkaartnederland.nl/")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "Artis University Medical Center")
		XCTAssertEqual(inst!.name!, "Artis University Medical Center (AUMC)")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "+31715269111")
		XCTAssertEqual(inst!.type!.coding![0].code!, "405608006")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Academic Medical Center")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.type!.coding![1].code!, "V6")
		XCTAssertEqual(inst!.type!.coding![1].display!, "University Medical Hospital")
		XCTAssertEqual(inst!.type!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst!.type!.coding![2].code!, "prov")
		XCTAssertEqual(inst!.type!.coding![2].display!, "Healthcare Provider")
		XCTAssertEqual(inst!.type!.coding![2].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
	
	func testOrganization9() {
		let inst = instantiateFrom("organization-example-f201-aumc.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].city!, "Den Helder")
		XCTAssertEqual(inst!.address![0].country!, "NLD")
		XCTAssertEqual(inst!.address![0].line![0], "Walvisbaai 3")
		XCTAssertEqual(inst!.address![0].postalCode!, "2333ZA")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.contact![0].address!.city!, "Den helder")
		XCTAssertEqual(inst!.contact![0].address!.country!, "NLD")
		XCTAssertEqual(inst!.contact![0].address!.line![0], "Walvisbaai 3")
		XCTAssertEqual(inst!.contact![0].address!.line![1], "Gebouw 2")
		XCTAssertEqual(inst!.contact![0].address!.postalCode!, "2333ZA")
		XCTAssertEqual(inst!.contact![0].name!.family![0], "Brand")
		XCTAssertEqual(inst!.contact![0].name!.given![0], "Ronald")
		XCTAssertEqual(inst!.contact![0].name!.prefix![0], "Prof.Dr.")
		XCTAssertEqual(inst!.contact![0].name!.text!, "Professor Brand")
		XCTAssertEqual(inst!.contact![0].name!.use!, "official")
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].telecom![0].use!, "work")
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "+31715269702")
		XCTAssertEqual(inst!.identifier![0].label!, "Zorginstelling naam")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://www.zorgkaartnederland.nl/")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "Artis University Medical Center")
		XCTAssertEqual(inst!.name!, "Artis University Medical Center (AUMC)")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "+31715269111")
		XCTAssertEqual(inst!.type!.coding![0].code!, "405608006")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Academic Medical Center")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.type!.coding![1].code!, "V6")
		XCTAssertEqual(inst!.type!.coding![1].display!, "University Medical Hospital")
		XCTAssertEqual(inst!.type!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst!.type!.coding![2].code!, "prov")
		XCTAssertEqual(inst!.type!.coding![2].display!, "Healthcare Provider")
		XCTAssertEqual(inst!.type!.coding![2].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
	
	func testOrganization10() {
		let inst = instantiateFrom("organization-example-f203-bumc.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].city!, "Blijdorp")
		XCTAssertEqual(inst!.address![0].country!, "NLD")
		XCTAssertEqual(inst!.address![0].line![0], "apenrots 230")
		XCTAssertEqual(inst!.address![0].postalCode!, "3056BE")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.identifier![0].label!, "Zorginstelling naam")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://www.zorgkaartnederland.nl/")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "Blijdorp MC")
		XCTAssertEqual(inst!.name!, "Blijdorp Medisch Centrum (BUMC)")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "+31107040704")
		XCTAssertEqual(inst!.type!.coding![0].code!, "405608006")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Academic Medical Center")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.type!.coding![1].code!, "prov")
		XCTAssertEqual(inst!.type!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
	}
}
