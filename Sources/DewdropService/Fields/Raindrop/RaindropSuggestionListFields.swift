// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Catena.IDFields

@Init public struct RaindropSuggestionListFields {
	public let collections: [IDFields<Collection.Identified>]
	public let tags: [TagNameFields]
}

extension RaindropSuggestionListFields: RaindropFields {
	public typealias Model = Raindrop
}
