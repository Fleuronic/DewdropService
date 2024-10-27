// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Collection

@MemberwiseInit(.public)
public struct CollectionMergeFields {
	public let ids: [Collection.ID]
	public let modifiedCount: Int
}
