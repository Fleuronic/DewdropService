// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Folder

@dynamicMemberLookup
@MemberwiseInit(.public)
public struct FolderImportFields: FolderFields {
	public let bookmarks: [RaindropImportFields]
	public let subfolders: [FolderImportFields]
	
	@Init(.public) private let folder: Folder
}

public extension FolderImportFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Folder, T>) -> T {
		folder[keyPath: keyPath]
	}
}
