// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.Import
import protocol Catena.UndocumentedFields
import protocol Catena.Valued

public protocol ImportFields: UndocumentedFields where Model == Import {
	init(fields: ImportFolderCountFields)
}
