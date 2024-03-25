// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop

public protocol RaindropSpec {
	associatedtype RaindropDetailsResult
	associatedtype RaindropHighlightsResult

	func fetchRaindropDetails(with id: Raindrop.ID) async -> RaindropDetailsResult
	func fetchRaindropHighlights(with id: Raindrop.ID) async -> RaindropHighlightsResult
}
