// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.Raindrop
import struct Foundation.URL
import protocol Catena.Scoped

public protocol ExportSpec {
	associatedtype ExportData

	func exportRaindrops(inCollectionWith id: Collection.ID, as format: Raindrop.Format) async -> ExportData
}
