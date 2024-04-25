// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Collection

@Init public struct CollectionMergeFields {
	public let ids: [Collection.ID]
	public let modifiedCount: Int
}
