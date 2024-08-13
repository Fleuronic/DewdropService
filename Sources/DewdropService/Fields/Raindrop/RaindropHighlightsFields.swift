// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop

public struct RaindropHighlightsFields {
	public let id: Raindrop.ID
	public let highlights: [HighlightInRaindropFields]
}

extension RaindropHighlightsFields: RaindropFields {
	public init(fields: RaindropDetailsFields) {
		id = fields.id
		highlights = fields.highlights ?? []
	}
}
