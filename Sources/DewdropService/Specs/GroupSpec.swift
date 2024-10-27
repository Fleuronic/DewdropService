// Copyright © Fleuronic LLC. All rights reserved.

import protocol Catena.Scoped

public protocol GroupSpec {
	associatedtype GroupList: Scoped<GroupListFields>
	associatedtype GroupListFields: GroupFields

	func listGroups() async -> GroupList
}
