// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import protocol Catena.Fields

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
