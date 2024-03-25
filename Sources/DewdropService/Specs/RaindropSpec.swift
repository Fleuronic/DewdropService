// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop

public protocol RaindropSpec {
	associatedtype RaindropDetailsResult

	func fetchRaindropDetails(with id: Raindrop.ID) async -> RaindropDetailsResult
}
