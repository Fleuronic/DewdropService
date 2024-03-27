// Copyright © Fleuronic LLC. All rights reserved.

import protocol Identity.Identifiable

@dynamicMemberLookup
public struct ModelFields<Model, ID> {
	public let id: ID

	private let model: Model

	public init(
		id: ID,
		model: Model
	) {
		self.id = id
		self.model = model
	}
}

// MARK -
public extension ModelFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Model, T>) -> T {
		model[keyPath: keyPath]
	}
}
