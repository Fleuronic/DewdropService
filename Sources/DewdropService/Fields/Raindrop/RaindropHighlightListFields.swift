// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop

public struct RaindropHighlightListFields {
	public let id: Raindrop.ID
	public let highlights: [HighlightInRaindropFields]

	public init(detailsFields: RaindropDetailsFields) {
		id = detailsFields.id
		highlights = detailsFields.highlights
	}
}
