// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Collection

@Init public struct CollectionCountFields: CollectionFields {
	public let id: Collection.ID
	public let count: Int
}
