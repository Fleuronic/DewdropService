// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import enum Dewdrop.Import
import struct Dewdrop.Folder

@Init public struct ImportFields {
	public let items: [FolderFields]
	public let count: Import.Count
}
