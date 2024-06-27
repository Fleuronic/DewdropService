// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Catena.Fields
import protocol Catena.Valued

public protocol RaindropFields: Fields where Model: Valued<Raindrop> {}

extension ModelFields: RaindropFields where Model == Raindrop {}
