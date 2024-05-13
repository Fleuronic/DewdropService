// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import protocol Identity.Identifiable

@Init
@dynamicMemberLookup
public struct ModelFields<Model, ID>: Fields {
	public let id: ID

	private let model: Model
}

// MARK -
public extension ModelFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Model, T>) -> T {
		model[keyPath: keyPath]
	}
}
