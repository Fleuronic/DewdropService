// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Raindrop
public import protocol Identity.Identifiable

@MemberwiseInit(.public)
public struct Tagging: Identifiable, Sendable {
	public let id: ID
	public let tagName: String
	public let raindrop: Raindrop.Identified
}
