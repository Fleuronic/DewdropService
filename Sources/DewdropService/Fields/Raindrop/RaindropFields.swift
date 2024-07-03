// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Catena.Fields
import protocol Catena.Valued

public protocol RaindropFields: Fields, Sendable where Model: Valued<Raindrop> {}

// MARK: -
extension ModelFields: RaindropFields where Model == Raindrop {}
