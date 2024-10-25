// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Collection

@MemberwiseInit(.public)
public struct CollectionMergeFields {
	public let ids: [Collection.ID]
	public let modifiedCount: Int
}
