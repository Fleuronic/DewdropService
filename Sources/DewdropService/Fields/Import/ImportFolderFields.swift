// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import enum Dewdrop.Import

@MemberwiseInit(.public)
public struct ImportFolderFields {
	public let folders: [FolderImportFields]
}

// MARK: -
extension ImportFolderFields: ImportFields {
	public init(fields: ImportFolderCountFields) {
		folders = fields.folders
	}
}
