// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import protocol Catena.Fields
import protocol Catena.Valued

public protocol TagFields: Fields, Sendable where Model: Valued<Tag> {}

// MARK: -
extension ModelFields: TagFields where Model == Tag {}
