// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.Import
import protocol Catena.UndocumentedFields

public protocol ImportFields: UndocumentedFields where Model == Import {
	init(fields: ImportFolderCountFields)
}
