// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup
import struct Foundation.Date
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catena.Representable
import protocol Identity.Identifiable

public extension Backup {
	typealias ID = Identified.ID
	typealias IDFields = Catena.IDFields<Identified>
	typealias Identified = IdentifiedBackup
}

// MARK: -
extension Backup: Catena.Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedBackup: Identifiable, Sendable {
	public let id: ID
	public let value: Backup
}

// MARK: -
public extension Backup.Identified {
	init(
		id: ID,
		creationDate: Date
	) {
		self.id = id

		value = .init(creationDate: creationDate)
	}
}

// MARK: -
extension Backup.Identified: Representable {
	// MARK: Valued
	public typealias Value = Backup
}
