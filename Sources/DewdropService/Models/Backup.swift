// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.FileFormat
import struct Dewdrop.Backup
import protocol Identity.Identifiable

public struct IdentifiedBackup {
	public let id: ID

	private let value: Backup
}

// MARK: -
public extension Backup {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedBackup
}

// MARK: -
extension Backup.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = String
}
