// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import enum Dewdrop.Import
import enum Catenary.Undocumented

public struct ImportFolderCountFields {
	public let folders: [FolderDetailsFields]

	private let undocumentedCount: Undocumented<Import.Count>
}

// MARK: -
public extension ImportFolderCountFields {
	init(
		folders: [FolderDetailsFields],
		count: Undocumented<Import.Count>
	) {
		self.folders = folders

		undocumentedCount = count
	}

	var count: Import.Count {
		undocumentedCount.precheckedValue
	}
}

// MARK: -
extension ImportFolderCountFields: ImportFields {
	// MARK: Fields
	public var undocumentedFields: [PartialKeyPath<Self>: Bool] {
		[
			\.count: undocumentedCount.isMissing
		]
	}
}
