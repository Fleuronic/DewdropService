// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Raindrop

@MemberwiseInit(.public)
public struct RaindropHighlightDetailsFields: RaindropFields {
	public let id: Raindrop.ID
	public let highlights: [HighlightInRaindropDetailsFields]
}
