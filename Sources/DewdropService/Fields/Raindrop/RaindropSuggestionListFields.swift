// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Collection

@Init public struct RaindropSuggestionListFields {
	public let collections: [IDFields<Collection.Identified>]
	public let tags: [TagNameFields]
}
