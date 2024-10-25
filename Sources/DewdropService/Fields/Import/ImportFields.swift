// Copyright © Fleuronic LLC. All rights reserved.

public import enum Dewdrop.Import
public import protocol Catena.UndocumentedFields
public import protocol Catena.Valued

public protocol ImportFields: UndocumentedFields {
	typealias Model = Import

	// TODO: Remove in favor of direct decoding
	init(fields: ImportFolderCountFields)
}
