// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Raindrop
import protocol Identity.Identifiable

@Init public struct Tagging: Identifiable, Sendable {
	public let id: ID
	public let tagName: String
	public let raindrop: Raindrop.Identified
}
