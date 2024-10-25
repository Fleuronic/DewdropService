// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Backup
public import protocol Catena.Valued
public import protocol Identity.Identifiable

// MARK: -
public extension Backup {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedBackup
}

// MARK: -
extension Backup: Catena.Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedBackup: Identifiable, Sendable {
	public let id: Self.ID
	public let value: Value
}

// MARK: -
extension Backup.Identified: Valued {
	// MARK: Valued
	public typealias Value = Backup
}
