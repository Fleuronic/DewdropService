// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Group
import protocol Catena.Fields
import protocol Catena.Valued

public protocol GroupFields: Fields, Sendable where Model: Valued<Group> {}

// MARK: -
extension ModelFields: GroupFields where Model == Group {}
