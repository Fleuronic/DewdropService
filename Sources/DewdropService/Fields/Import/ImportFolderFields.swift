// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.Import

public struct ImportFolderFields {
	public let folders: [FolderImportFields]
}

// MARK: -
extension ImportFolderFields: ImportFields {
	public typealias Model = Import
	
	public init(fields: ImportFolderAndCountFields) {
		folders = fields.folders
	}
}
