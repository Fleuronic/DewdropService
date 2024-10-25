// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Highlight
public import struct Foundation.Date

@MemberwiseInit(.public)
public struct HighlightInRaindropFields: HighlightFields {
	public let id: Highlight.ID
	public let text: String
	public let color: Highlight.Color
	public let note: String?
	public let creationDate: Date
}
