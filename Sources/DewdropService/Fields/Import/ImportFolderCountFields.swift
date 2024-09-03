// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import enum Dewdrop.Import
import enum Catena.Undocumented

@dynamicMemberLookup
public struct ImportFolderCountFields {
	private let folderFields: ImportFolderFields

	private var undocumentedCount: Undocumented<Import.Count>
}

public extension ImportFolderCountFields {
	init(
		folderFields: ImportFolderFields,
		count: Undocumented<Import.Count>
	) {
		self.folderFields = folderFields
		undocumentedCount = count
	}
	
	var count: Import.Count { undocumentedCount.precheckedValue }

	subscript<T>(dynamicMember keyPath: KeyPath<ImportFolderFields, T>) -> T {
		folderFields[keyPath: keyPath]
	}
}

// MARK: -
extension ImportFolderCountFields: ImportFields {
	public var undocumentedFields: [PartialKeyPath<Self>: Bool] {
		[
			\.count: undocumentedCount.isMissing
		]
	}

	public init(fields: ImportFolderCountFields) {
		self = fields
	}
}
