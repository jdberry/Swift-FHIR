//
//  ObservationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ObservationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Observation {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Observation {
		let instance = SwiftFHIR.Observation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testObservation1() {
		do {
			let instance = try runObservation1()
			try runObservation1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?.coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "3141-9")
		XCTAssertEqual(inst.code?.coding?[0].display, "Weight Measured")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[1].code, "27113001")
		XCTAssertEqual(inst.code?.coding?[1].display, "Body weight")
		XCTAssertEqual(inst.code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[2].code, "body-weight")
		XCTAssertEqual(inst.code?.coding?[2].display, "Body Weight")
		XCTAssertEqual(inst.code?.coding?[2].system?.absoluteString, "http://acme.org/devices/clinical-codes")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "[lb_av]")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "lbs")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "185"))
		
		return inst
	}
	
	func testObservation2() {
		do {
			let instance = try runObservation2()
			try runObservation2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-genetics-example3-mutationlist-4.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "49874-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "ABCB4 gene mutation analysis")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "53037-8")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "Genetic disease sequence variation interpretation")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].code, "LA6675-8")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].display, "Benign")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://www.genenames.org")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsDNARegionName")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "intron 26")
		XCTAssertEqual(inst.extension_fhir?[1].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsVariationId")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].code, "31653")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].display, "c.3487-16T>C")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/projects/SNP")
		XCTAssertEqual(inst.id, "genetics-example3-mutationlist-4")
		XCTAssertEqual(inst.performer?[0].display, "Molecular Diagnostic Laboratory")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/genetics-example2")
		XCTAssertEqual(inst.specimen?.display, "Molecular Specimen ID: MLD45-Z4-1234")
		XCTAssertEqual(inst.specimen?.reference, "Specimen/genetics-example2")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "Molecular Lab Patient ID: HOSP-23456")
		XCTAssertEqual(inst.subject?.reference, "Patient/genetics-example2")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testObservation3() {
		do {
			let instance = try runObservation3()
			try runObservation3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f002-excess.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "11555-0")
		XCTAssertEqual(inst.code?.coding?[0].display, "Base excess in Blood by calculation")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2013-04-05T10:30:10+01:00")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2013-04-02T10:30:10+01:00")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/observations")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "6324")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "H")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "Above high normal")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].display, "A. Langeveld")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f005")
		XCTAssertEqual(inst.referenceRange?[0].high?.code, "mmol/L")
		XCTAssertEqual(inst.referenceRange?[0].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].high?.unit, "mmol/l")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "11.2"))
		XCTAssertEqual(inst.referenceRange?[0].low?.code, "mmol/L")
		XCTAssertEqual(inst.referenceRange?[0].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].low?.unit, "mmol/l")
		XCTAssertEqual(inst.referenceRange?[0].low?.value, NSDecimalNumber(string: "7.1"))
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "mmol/L")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "mmol/l")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "12.6"))
		
		return inst
	}
	
	func testObservation4() {
		do {
			let instance = try runObservation4()
			try runObservation4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-genetics-example3-mutationlist-2.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "49874-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "ABCB4 gene mutation analysis")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "53037-8")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "Genetic disease sequence variation interpretation")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].code, "LA6675-8")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].display, "Benign")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://www.genenames.org")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsDNARegionName")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "Exon 6")
		XCTAssertEqual(inst.extension_fhir?[1].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsAminoAcidChange")
		XCTAssertEqual(inst.extension_fhir?[1].valueString, "p.N168N")
		XCTAssertEqual(inst.extension_fhir?[2].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsVariationId")
		XCTAssertEqual(inst.extension_fhir?[2].valueCodeableConcept?.coding?[0].code, "1202283")
		XCTAssertEqual(inst.extension_fhir?[2].valueCodeableConcept?.coding?[0].display, "c.181T>G")
		XCTAssertEqual(inst.extension_fhir?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/projects/SNP")
		XCTAssertEqual(inst.id, "genetics-example3-mutationlist-2")
		XCTAssertEqual(inst.performer?[0].display, "Molecular Diagnostic Laboratory")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/genetics-example2")
		XCTAssertEqual(inst.specimen?.display, "Molecular Specimen ID: MLD45-Z4-1234")
		XCTAssertEqual(inst.specimen?.reference, "Specimen/genetics-example2")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "Molecular Lab Patient ID: HOSP-23456")
		XCTAssertEqual(inst.subject?.reference, "Patient/genetics-example2")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testObservation5() {
		do {
			let instance = try runObservation5()
			try runObservation5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f206-staphylococcus.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "104177")
		XCTAssertEqual(inst.code?.coding?[0].display, "Blood culture")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://acmelabs.org")
		XCTAssertEqual(inst.code?.coding?[1].code, "600-7")
		XCTAssertEqual(inst.code?.coding?[1].display, "Bacteria identified in Blood by Culture")
		XCTAssertEqual(inst.code?.coding?[1].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.id, "f206")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "POS")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-03-11T10:28:00+01:00")
		XCTAssertEqual(inst.method?.coding?[0].code, "104177005")
		XCTAssertEqual(inst.method?.coding?[0].display, "Blood culture for bacteria, including anaerobic screen")
		XCTAssertEqual(inst.method?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.performer?[0].display, "Luigi Maas")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f202")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].code, "3092008")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].display, "Staphylococcus aureus")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testObservation6() {
		do {
			let instance = try runObservation6()
			try runObservation6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-bloodpressure-cancel.json")
		
		XCTAssertEqual(inst.bodySite?.coding?[0].code, "368209003")
		XCTAssertEqual(inst.bodySite?.coding?[0].display, "Right arm")
		XCTAssertEqual(inst.bodySite?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "55284-4")
		XCTAssertEqual(inst.code?.coding?[0].display, "Blood pressure systolic & diastolic")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.comments, "In this example, the blood pressure measurements are not available due to cancellation of the order.  Data absent reason is present for each component")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "8480-6")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "Systolic blood pressure")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].code, "271649006")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].display, "Systolic blood pressure")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[0].code?.coding?[2].code, "bp-s")
		XCTAssertEqual(inst.component?[0].code?.coding?[2].display, "Systolic Blood pressure")
		XCTAssertEqual(inst.component?[0].code?.coding?[2].system?.absoluteString, "http://acme.org/devices/clinical-codes")
		XCTAssertEqual(inst.component?[0].dataAbsentReason?.coding?[0].code, "not-asked")
		XCTAssertEqual(inst.component?[0].dataAbsentReason?.coding?[0].display, "Not Asked")
		XCTAssertEqual(inst.component?[0].dataAbsentReason?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/data-absent-reason")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].code, "8462-4")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].display, "Diastolic blood pressure")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[1].dataAbsentReason?.coding?[0].code, "not-asked")
		XCTAssertEqual(inst.component?[1].dataAbsentReason?.coding?[0].display, "Not Asked")
		XCTAssertEqual(inst.component?[1].dataAbsentReason?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/data-absent-reason")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2012-09-17")
		XCTAssertEqual(inst.id, "blood-pressure-cancel")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "L")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "Below low normal")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.interpretation?.text, "low")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2014-01-30T22:35:23+11:00")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "cancelled")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testObservation7() {
		do {
			let instance = try runObservation7()
			try runObservation7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-genetics-example3-mutationlist-3.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "49874-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "ABCB4 gene mutation analysis")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "53037-8")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "Genetic disease sequence variation interpretation")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].code, "LA6675-8")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].display, "Benign")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://www.genenames.org")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsDNARegionName")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "intron 16")
		XCTAssertEqual(inst.extension_fhir?[1].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsVariationId")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].code, "31668")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].display, "c.2211+16C>T")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/projects/SNP")
		XCTAssertEqual(inst.id, "genetics-example3-mutationlist-3")
		XCTAssertEqual(inst.performer?[0].display, "Molecular Diagnostic Laboratory")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/genetics-example2")
		XCTAssertEqual(inst.specimen?.display, "Molecular Specimen ID: MLD45-Z4-1234")
		XCTAssertEqual(inst.specimen?.reference, "Specimen/genetics-example2")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "Molecular Lab Patient ID: HOSP-23456")
		XCTAssertEqual(inst.subject?.reference, "Patient/genetics-example2")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testObservation8() {
		do {
			let instance = try runObservation8()
			try runObservation8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-glasgow.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "9269-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "Glasgow coma score total")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Glasgow Coma Scale , (GCS)")
		XCTAssertEqual(inst.contained?[0].id, "motor")
		XCTAssertEqual(inst.contained?[1].id, "verbal")
		XCTAssertEqual(inst.contained?[2].id, "eyes")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2014-12-11T04:44:16Z")
		XCTAssertEqual(inst.id, "glasgow")
		XCTAssertEqual(inst.referenceRange?[0].high?.code, "{score}")
		XCTAssertEqual(inst.referenceRange?[0].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "8"))
		XCTAssertEqual(inst.referenceRange?[0].meaning?.text, "Severe TBI")
		XCTAssertEqual(inst.referenceRange?[1].high?.code, "{score}")
		XCTAssertEqual(inst.referenceRange?[1].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[1].high?.value, NSDecimalNumber(string: "12"))
		XCTAssertEqual(inst.referenceRange?[1].low?.code, "{score}")
		XCTAssertEqual(inst.referenceRange?[1].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[1].low?.value, NSDecimalNumber(string: "9"))
		XCTAssertEqual(inst.referenceRange?[1].meaning?.text, "Moderate TBI")
		XCTAssertEqual(inst.referenceRange?[2].low?.code, "{score}")
		XCTAssertEqual(inst.referenceRange?[2].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[2].low?.value, NSDecimalNumber(string: "13"))
		XCTAssertEqual(inst.referenceRange?[2].meaning?.text, "Mild TBI")
		XCTAssertEqual(inst.related?[0].target?.display, "Motor score")
		XCTAssertEqual(inst.related?[0].target?.reference, "#motor")
		XCTAssertEqual(inst.related?[0].type, "derived-from")
		XCTAssertEqual(inst.related?[1].target?.display, "Verbal score")
		XCTAssertEqual(inst.related?[1].target?.reference, "#verbal")
		XCTAssertEqual(inst.related?[1].type, "derived-from")
		XCTAssertEqual(inst.related?[2].target?.display, "Eyes score")
		XCTAssertEqual(inst.related?[2].target?.reference, "#eyes")
		XCTAssertEqual(inst.related?[2].type, "derived-from")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "{score}")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "13"))
		
		return inst
	}
	
	func testObservation9() {
		do {
			let instance = try runObservation9()
			try runObservation9(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation9(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-satO2.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "150456")
		XCTAssertEqual(inst.code?.coding?[0].display, "MDC_PULS_OXIM_SAT_O2")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "https://rtmms.nist.gov")
		XCTAssertEqual(inst.device?.reference, "DeviceMetric/example")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2014-12-05T09:30:10+01:00")
		XCTAssertEqual(inst.id, "satO2")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodcare.org/observation/id")
		XCTAssertEqual(inst.identifier?[0].value, "o1223435-10")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "N")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "Normal (applies to non-numeric results)")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.referenceRange?[0].high?.code, "262688")
		XCTAssertEqual(inst.referenceRange?[0].high?.system?.absoluteString, "https://rtmms.nist.gov")
		XCTAssertEqual(inst.referenceRange?[0].high?.unit, "%")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "99"))
		XCTAssertEqual(inst.referenceRange?[0].low?.code, "262688")
		XCTAssertEqual(inst.referenceRange?[0].low?.system?.absoluteString, "https://rtmms.nist.gov")
		XCTAssertEqual(inst.referenceRange?[0].low?.unit, "%")
		XCTAssertEqual(inst.referenceRange?[0].low?.value, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "262688")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "https://rtmms.nist.gov")
		XCTAssertEqual(inst.valueQuantity?.unit, "%")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "95"))
		
		return inst
	}
	
	func testObservation10() {
		do {
			let instance = try runObservation10()
			try runObservation10(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation10(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-glasgow-qa.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "9269-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "Glasgow coma score total")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Glasgow Coma Scale , (GCS)")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2014-12-11T04:44:16Z")
		XCTAssertEqual(inst.id, "gcs-qa")
		XCTAssertEqual(inst.referenceRange?[0].high?.code, "{score}")
		XCTAssertEqual(inst.referenceRange?[0].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "8"))
		XCTAssertEqual(inst.referenceRange?[0].meaning?.text, "Severe TBI")
		XCTAssertEqual(inst.referenceRange?[1].high?.code, "{score}")
		XCTAssertEqual(inst.referenceRange?[1].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[1].high?.value, NSDecimalNumber(string: "12"))
		XCTAssertEqual(inst.referenceRange?[1].low?.code, "{score}")
		XCTAssertEqual(inst.referenceRange?[1].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[1].low?.value, NSDecimalNumber(string: "9"))
		XCTAssertEqual(inst.referenceRange?[1].meaning?.text, "Moderate TBI")
		XCTAssertEqual(inst.referenceRange?[2].low?.code, "{score}")
		XCTAssertEqual(inst.referenceRange?[2].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[2].low?.value, NSDecimalNumber(string: "13"))
		XCTAssertEqual(inst.referenceRange?[2].meaning?.text, "Mild TBI")
		XCTAssertEqual(inst.related?[0].target?.display, "GCS form results")
		XCTAssertEqual(inst.related?[0].target?.reference, "QuestionnaireResponse/gcs")
		XCTAssertEqual(inst.related?[0].type, "derived-from")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "{score}")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "13"))
		
		return inst
	}
}
