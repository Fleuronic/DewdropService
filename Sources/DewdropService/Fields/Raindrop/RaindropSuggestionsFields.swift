// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Catena.IDFields

@MemberwiseInit(.public)
public struct RaindropSuggestionsFields {
	public let collections: [IDFields<Collection.Identified>]
	public let tags: [TagNameFields]
}
