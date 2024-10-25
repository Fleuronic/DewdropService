// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Folder

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct FolderImportFields: FolderFields {
	public let bookmarks: [RaindropImportFields]
	public let subfolders: [FolderImportFields]
	
	private let folder: Folder
}

public extension FolderImportFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Folder, T>) -> T {
		folder[keyPath: keyPath]
	}
}
