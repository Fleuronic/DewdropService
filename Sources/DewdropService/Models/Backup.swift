// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup
import protocol Catena.Valued
import protocol Identity.Identifiable

// MARK: -
public extension Backup {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedBackup
}

@dynamicMemberLookup
public struct IdentifiedBackup: Valued, Identifiable {
	public typealias Value = Backup

	public let id: Self.ID

	let value: Value
}

public extension IdentifiedBackup {
	subscript<T>(dynamicMember keyPath: KeyPath<Backup, T>) -> T {
		value[keyPath: keyPath]
	}
}
