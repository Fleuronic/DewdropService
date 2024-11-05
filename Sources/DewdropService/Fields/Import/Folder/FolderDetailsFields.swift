// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Folder

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct FolderDetailsFields: FolderFields {
	public let bookmarks: [RaindropImportFields]
	public let subfolders: [FolderDetailsFields]
	
	private let folder: Folder
}

public extension FolderDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Folder, T>) -> T {
		folder[keyPath: keyPath]
	}
}
