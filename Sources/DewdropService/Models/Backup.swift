// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup
import protocol Identity.Identifiable

public struct IdentifiedBackup {
	public let id: ID

	let value: Backup
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
