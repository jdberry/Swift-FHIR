//
//  Library.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Library) on 2019-02-22.
//  2019, SMART Health IT.
//

import Foundation


/**
Represents a library of quality improvement components.

The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe and
expose existing knowledge assets such as logic libraries and information model descriptions, as well as to describe a
collection of knowledge assets.
*/
open class Library: DomainResource {
	override open class var resourceType: String {
		get { return "Library" }
	}
	
	/// When the library was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Who authored the content.
	public var author: [ContactDetail]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Contents of the library, either embedded or referenced.
	public var content: [Attachment]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// What data is referenced by this library.
	public var dataRequirement: [DataRequirement]?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Natural language description of the library.
	public var description_fhir: FHIRString?
	
	/// Who edited the content.
	public var editor: [ContactDetail]?
	
	/// When the library is expected to be used.
	public var effectivePeriod: Period?
	
	/// Who endorsed the content.
	public var endorser: [ContactDetail]?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Additional identifier for the library.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for library (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the library was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Name for this library (computer friendly).
	public var name: FHIRString?
	
	/// Parameters defined by the library.
	public var parameter: [ParameterDefinition]?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this library is defined.
	public var purpose: FHIRString?
	
	/// Additional documentation, citations, etc..
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Who reviewed the content.
	public var reviewer: [ContactDetail]?
	
	/// The status of this library. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Type of individual the library content is focused on.
	public var subjectCodeableConcept: CodeableConcept?
	
	/// Type of individual the library content is focused on.
	public var subjectReference: Reference?
	
	/// Subordinate title of the library.
	public var subtitle: FHIRString?
	
	/// Name for this library (human friendly).
	public var title: FHIRString?
	
	/// E.g. Education, Treatment, Assessment, etc..
	public var topic: [CodeableConcept]?
	
	/// logic-library | model-definition | asset-collection | module-definition.
	public var type: CodeableConcept?
	
	/// Canonical identifier for this library, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// Describes the clinical usage of the library.
	public var usage: FHIRString?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the library.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus, type: CodeableConcept) {
		self.init()
		self.status = status
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		author = createInstances(of: ContactDetail.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		content = createInstances(of: Attachment.self, for: "content", in: json, context: &instCtx, owner: self) ?? content
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		dataRequirement = createInstances(of: DataRequirement.self, for: "dataRequirement", in: json, context: &instCtx, owner: self) ?? dataRequirement
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		editor = createInstances(of: ContactDetail.self, for: "editor", in: json, context: &instCtx, owner: self) ?? editor
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		endorser = createInstances(of: ContactDetail.self, for: "endorser", in: json, context: &instCtx, owner: self) ?? endorser
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		parameter = createInstances(of: ParameterDefinition.self, for: "parameter", in: json, context: &instCtx, owner: self) ?? parameter
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		reviewer = createInstances(of: ContactDetail.self, for: "reviewer", in: json, context: &instCtx, owner: self) ?? reviewer
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subjectCodeableConcept = createInstance(type: CodeableConcept.self, for: "subjectCodeableConcept", in: json, context: &instCtx, owner: self) ?? subjectCodeableConcept
		subjectReference = createInstance(type: Reference.self, for: "subjectReference", in: json, context: &instCtx, owner: self) ?? subjectReference
		subtitle = createInstance(type: FHIRString.self, for: "subtitle", in: json, context: &instCtx, owner: self) ?? subtitle
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		topic = createInstances(of: CodeableConcept.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		usage = createInstance(type: FHIRString.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "content", using: self.content, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		arrayDecorate(json: &json, withKey: "dataRequirement", using: self.dataRequirement, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "editor", using: self.editor, errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "endorser", using: self.endorser, errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "parameter", using: self.parameter, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		arrayDecorate(json: &json, withKey: "reviewer", using: self.reviewer, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subjectCodeableConcept?.decorate(json: &json, withKey: "subjectCodeableConcept", errors: &errors)
		self.subjectReference?.decorate(json: &json, withKey: "subjectReference", errors: &errors)
		self.subtitle?.decorate(json: &json, withKey: "subtitle", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.usage?.decorate(json: &json, withKey: "usage", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}

