// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.Import
import protocol Catena.UndocumentedFields
import protocol Catena.Valued

public protocol ImportFields: UndocumentedFields {
	typealias Model = Import

	// TODO: Remove in favor of direct decoding
	init(fields: ImportFolderCountFields)
}
