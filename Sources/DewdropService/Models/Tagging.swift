// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Raindrop
import protocol Identity.Identifiable

@MemberwiseInit(.public)
public struct Tagging: Identifiable, Sendable {
	public let id: ID
	public let tagName: String
	public let raindrop: Raindrop.Identified
}
