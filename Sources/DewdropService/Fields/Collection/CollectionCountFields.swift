// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Collection

@MemberwiseInit(.public)
public struct CollectionCountFields: CollectionFields {
	public let id: Collection.ID
	public let count: Int
}
