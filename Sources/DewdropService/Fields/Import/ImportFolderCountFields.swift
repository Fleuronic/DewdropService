// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import enum Dewdrop.Import

@dynamicMemberLookup
@Init public struct ImportFolderCountFields {
	public let count: Import.Count

	private let folderFields: ImportFolderFields
}

public extension ImportFolderCountFields {
	subscript<T>(dynamicMember keyPath: KeyPath<ImportFolderFields, T>) -> T {
		folderFields[keyPath: keyPath]
	}
}

// MARK: -
extension ImportFolderCountFields: ImportFields {
	public typealias Model = Import
	
	public init(fields: ImportFolderCountFields) {
		self = fields
	}
}
