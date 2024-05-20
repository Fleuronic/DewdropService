// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import enum Dewdrop.Import

@Init public struct ImportFolderAndCountFields {
	public let folders: [FolderImportFields]
	public let count: Import.Count
}

// MARK: -
extension ImportFolderAndCountFields: ImportFields {
	public typealias Model = Import
	
	public init(fields: ImportFolderAndCountFields) {
		self = fields
	}
}
