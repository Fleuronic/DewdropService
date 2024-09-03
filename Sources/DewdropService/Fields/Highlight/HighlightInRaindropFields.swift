// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Highlight
import struct Foundation.Date

@MemberwiseInit(.public)
public struct HighlightInRaindropFields: HighlightFields {
	public let id: Highlight.ID
	public let text: String
	public let color: Highlight.Color
	public let note: String?
	public let creationDate: Date
}
