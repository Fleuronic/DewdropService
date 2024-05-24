// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.Import
import protocol Catena.Fields

public protocol ImportFields: Fields where Model == Import {
	init(fields: ImportFolderCountFields)
}

