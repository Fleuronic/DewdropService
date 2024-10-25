// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Raindrop

public struct RaindropHighlightsFields: RaindropFields {
	public let id: Raindrop.ID
	public let highlights: [HighlightInRaindropFields]
}
