// Copyright © Fleuronic LLC. All rights reserved.

public import enum Dewdrop.ItemType
public import struct Dewdrop.Raindrop
public import struct Dewdrop.Collection
public import struct Dewdrop.Media
public import struct Dewdrop.Highlight
public import protocol Catena.Scoped

public protocol RaindropSpec {
	associatedtype RaindropList: Scoped<RaindropListFields>
	associatedtype RaindropListFields: RaindropFields

	func listRaindrops(inCollectionWith id: Collection.ID, searchingFor query: String?/*, sortedBy sort: Raindrop.Sort?*/, onPage page: Int?, listing raindropsPerPage: Int?) async -> RaindropList
}
