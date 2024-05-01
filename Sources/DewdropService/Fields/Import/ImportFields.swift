// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import enum Dewdrop.Import
import struct Dewdrop.Folder

@Init public struct ImportFields {
	public let folders: [Folder]
	public let count: Import.Count
}