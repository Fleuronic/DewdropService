// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Collection

@Init public struct CollectionCountFields {
	public let id: Collection.ID
	public let count: Int
}

// MARK: -
extension CollectionCountFields: CollectionFields {
	public typealias Model = Collection
}
