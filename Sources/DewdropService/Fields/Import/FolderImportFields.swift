// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Folder

@Init @dynamicMemberLookup public struct FolderImportFields {
	public let bookmarks: [RaindropImportFields]
	public let subfolders: [FolderImportFields]
	
	private let folder: Folder
}

public extension FolderImportFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Folder, T>) -> T {
		folder[keyPath: keyPath]
	}
}

// MARK: -
extension FolderImportFields: FolderFields {
	public typealias Model = Folder
}
