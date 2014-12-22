//
//  MedicationPrescriptionTests.swift
//  MedicationPrescriptionTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class MedicationPrescriptionTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> MedicationPrescription? {
		let json = readJSONFile(filename)
		let instance = MedicationPrescription(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationPrescription1() {
		let inst = instantiateFrom("medicationprescription-example-f001-combivent.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2013-05-25T19:32:52+01:00")!)
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.code!, "d")
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.system!, NSURL(string: "urn:oid:2.16.840.1.113883.6.8")!)
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.units!, "days")
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.value!, NSDecimalNumber(string: "40"))
		XCTAssertEqual(inst!.dispense!.numberOfRepeatsAllowed!, 20)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "ug")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "urn:oid:2.16.840.1.113883.6.8")!)
		XCTAssertEqual(inst!.dispense!.quantity!.units!, "mcg")
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.end!, NSDate.dateFromISOString("2013-05-30")!)
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2013-04-08")!)
		XCTAssertEqual(inst!.dosageInstruction![0].additionalInstructions!.text!, "for use during pregnancy, contact physician")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "ml")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "ml")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].end!, NSDate.dateFromISOString("2013-11-05")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2013-08-04")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].text!, "3 tot 4 maal daags 1 flacon")
		XCTAssertEqual(inst!.encounter!.display!, "visit who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9837293")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f001")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "13645005")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "Chronic obstructive pulmonary disease")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testMedicationPrescription2() {
		let inst = instantiateFrom("medicationprescription-example-f001-combivent.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2013-05-25T19:32:52+01:00")!)
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.code!, "d")
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.system!, NSURL(string: "urn:oid:2.16.840.1.113883.6.8")!)
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.units!, "days")
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.value!, NSDecimalNumber(string: "40"))
		XCTAssertEqual(inst!.dispense!.numberOfRepeatsAllowed!, 20)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "ug")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "urn:oid:2.16.840.1.113883.6.8")!)
		XCTAssertEqual(inst!.dispense!.quantity!.units!, "mcg")
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.end!, NSDate.dateFromISOString("2013-05-30")!)
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2013-04-08")!)
		XCTAssertEqual(inst!.dosageInstruction![0].additionalInstructions!.text!, "for use during pregnancy, contact physician")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "ml")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "ml")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].end!, NSDate.dateFromISOString("2013-11-05")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2013-08-04")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].text!, "3 tot 4 maal daags 1 flacon")
		XCTAssertEqual(inst!.encounter!.display!, "visit who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9837293")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f001")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "13645005")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "Chronic obstructive pulmonary disease")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testMedicationPrescription3() {
		let inst = instantiateFrom("medicationprescription-example-f001-combivent.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2013-05-25T19:32:52+01:00")!)
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.code!, "d")
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.system!, NSURL(string: "urn:oid:2.16.840.1.113883.6.8")!)
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.units!, "days")
		XCTAssertEqual(inst!.dispense!.expectedSupplyDuration!.value!, NSDecimalNumber(string: "40"))
		XCTAssertEqual(inst!.dispense!.numberOfRepeatsAllowed!, 20)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "ug")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "urn:oid:2.16.840.1.113883.6.8")!)
		XCTAssertEqual(inst!.dispense!.quantity!.units!, "mcg")
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.end!, NSDate.dateFromISOString("2013-05-30")!)
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2013-04-08")!)
		XCTAssertEqual(inst!.dosageInstruction![0].additionalInstructions!.text!, "for use during pregnancy, contact physician")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "ml")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "ml")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].end!, NSDate.dateFromISOString("2013-11-05")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2013-08-04")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].text!, "3 tot 4 maal daags 1 flacon")
		XCTAssertEqual(inst!.encounter!.display!, "visit who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9837293")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f001")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "13645005")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "Chronic obstructive pulmonary disease")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testMedicationPrescription4() {
		let inst = instantiateFrom("medicationprescription-example-f002-crestor.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2013-04-08")!)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2013-04-08")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2013-08-04")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc.nl/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9837343")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f002")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "28036006")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "High density lipoprotein cholesterol level")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testMedicationPrescription5() {
		let inst = instantiateFrom("medicationprescription-example-f002-crestor.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2013-04-08")!)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2013-04-08")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2013-08-04")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc.nl/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9837343")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f002")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "28036006")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "High density lipoprotein cholesterol level")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testMedicationPrescription6() {
		let inst = instantiateFrom("medicationprescription-example-f003-tolbutamide.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "500"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc.nl/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9845343")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f003")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "444780001")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "High glucose level in blood")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testMedicationPrescription7() {
		let inst = instantiateFrom("medicationprescription-example-f003-tolbutamide.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "500"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc.nl/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9845343")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f003")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "444780001")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "High glucose level in blood")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testMedicationPrescription8() {
		let inst = instantiateFrom("medicationprescription-example-f004-metoprolol.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "50"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc.nl/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9845343")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f004")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "38341003")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "High blood pressure")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testMedicationPrescription9() {
		let inst = instantiateFrom("medicationprescription-example-f004-metoprolol.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "50"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc.nl/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9845343")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f004")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "38341003")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "High blood pressure")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testMedicationPrescription10() {
		let inst = instantiateFrom("medicationprescription-example-f005-enalapril.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst!.dispense!.quantity!.system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dispense!.quantity!.value!, NSDecimalNumber(string: "28"))
		XCTAssertEqual(inst!.dispense!.validityPeriod!.start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst!.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "5"))
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst!.dosageInstruction![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.event![0].start!, NSDate.dateFromISOString("2011-05-01")!)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst!.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst!.dosageInstruction![0].site!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc.nl/portal/prescriptions")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "order9823343")
		XCTAssertEqual(inst!.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst!.medication!.reference!, "Medication/f005")
		XCTAssertEqual(inst!.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].code!, "38341003")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].display!, "High blood pressure")
		XCTAssertEqual(inst!.reasonCodeableConcept!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "active")
	}
}
