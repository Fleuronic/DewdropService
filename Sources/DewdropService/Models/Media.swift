// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Media
import struct Dewdrop.Raindrop
import struct Catena.IDFields
import struct Foundation.URL
import struct Foundation.UUID
import protocol Catena.Valued
import protocol Catena.Representable
import protocol Identity.Identifiable

public extension Media {
	typealias ID = Identified.ID
	typealias IDFields = Catena.IDFields<Identified>
	typealias Identified = IdentifiedMedia
}

// MARK: -
extension Media: Catena.Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedMedia: Sendable {
	public let id: Self.ID
	public let value: Value
	public let raindrop: Raindrop.Identified
}

// MARK: -
public extension Media.Identified {
	init(
		id: ID,
		url: URL,
		type: Media.MediaType,
		raindrop: Raindrop.Identified
	) {
		self.init(
			id: id,
			value: .init(
				url: url,
				type: type
			),
			raindrop: raindrop
		)
	}
}

// MARK: -
extension Media.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = UUID
}

extension Media.Identified: Valued {
	// MARK: Valued
	public typealias Value = Media
}

// MARK: -
public extension [Media] {
	var url: [URL] { map(\.url) }
	var type: [Media.MediaType] { map(\.type) }
}

// MARK: -
public extension [Media.Identified] {
	var id: [Media.ID] { map(\.id) }
	var value: [Media] { map(\.value) }

	init(
		ids: [Media.ID],
		urls: [URL],
		types: [Media.MediaType]
	) {
		let raindrops: [Raindrop.Identified] = []
		self = ids.enumerated().map { index, id in
			.init(
				id: id,
				url: urls[index],
				type: types[index],
				raindrop: raindrops[index]
			)
		}
	}
}
