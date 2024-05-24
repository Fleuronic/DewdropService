// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import enum Dewdrop.Import

@Init public struct ImportFolderFields {
	public let folders: [FolderImportFields]
}

// MARK: -
extension ImportFolderFields: ImportFields {
	public typealias Model = Import
	
	public init(fields: ImportFolderCountFields) {
		folders = fields.folders
	}
}
