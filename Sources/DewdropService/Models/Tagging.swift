// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Tag
import struct Dewdrop.Raindrop
import protocol Identity.Identifiable

@MemberwiseInit(.public)
public struct Tagging: Identifiable, Sendable {
	public let id: ID
	public let tag: Tag.Identified
	public let raindrop: Raindrop.Identified
}
