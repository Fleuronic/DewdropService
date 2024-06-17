// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Highlight
import struct Foundation.Date

@Init public struct HighlightInRaindropFields: Sendable /* TODO */ {
	public let id: Highlight.ID
	public let text: String
	public let color: Highlight.Color
	public let note: String?
	public let creationDate: Date
}
