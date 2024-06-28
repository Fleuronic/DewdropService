// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Group
import protocol Catena.Scoped

public protocol GroupSpec {
	associatedtype GroupListFields: GroupFields
	associatedtype GroupList: Scoped<GroupListFields>

	func listGroups() async -> GroupList
}
