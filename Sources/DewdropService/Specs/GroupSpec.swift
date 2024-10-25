// Copyright © Fleuronic LLC. All rights reserved.

public import protocol Catena.Scoped

public protocol GroupSpec {
	associatedtype GroupList: Scoped<GroupListFields>
	associatedtype GroupListFields: GroupFields

	func listGroups() async -> GroupList
}
