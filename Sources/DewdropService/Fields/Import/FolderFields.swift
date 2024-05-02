// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Folder

@Init public struct FolderFields {
	public let title: String
	public let bookmarks: [RaindropImportFields]
	public let folders: [FolderFields]
}
