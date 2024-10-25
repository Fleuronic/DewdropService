// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Raindrop
public import struct Dewdrop.Collection
public import struct Catena.IDFields

@MemberwiseInit(.public)
public struct RaindropSuggestionListFields {
	public let collections: [IDFields<Collection.Identified>]
	public let tags: [TagNameFields]
}
