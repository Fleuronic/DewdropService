// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import protocol Catena.Fields
import protocol Identity.Identifiable

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct ModelFields<Model: Sendable, ID: Sendable>: Fields {
	public let id: ID

	private let model: Model
}

// MARK: -
public extension ModelFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Model, T>) -> T {
		model[keyPath: keyPath]
	}
}
