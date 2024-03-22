// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop

public protocol RaindropSpec {
	associatedtype RaindropResult

	func fetchRaindrop(with id: Raindrop.ID) async -> RaindropResult
}
