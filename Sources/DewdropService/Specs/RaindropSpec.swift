// Copyright © Fleuronic LLC. All rights reserved.

public protocol RaindropSpec {
	associatedtype RaindropResult

	func fetchRaindrop(with id: Int) async -> RaindropResult
}
