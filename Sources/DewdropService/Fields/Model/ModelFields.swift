// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import protocol Catena.Fields
import protocol Identity.Identifiable

@dynamicMemberLookup
@MemberwiseInit(.public)
public struct ModelFields<Model: Sendable, ID: Sendable>: Fields {
	public let id: ID

	@Init(.public) private let model: Model
}

// MARK: -
public extension ModelFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Model, T>) -> T {
		model[keyPath: keyPath]
	}
}
