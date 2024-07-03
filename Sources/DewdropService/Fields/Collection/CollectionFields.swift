// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import protocol Catena.Fields
import protocol Catena.Valued

public protocol CollectionFields: Fields, Sendable where Model: Valued<Collection> {}

// MARK: -
extension ModelFields: CollectionFields where Model == Collection {}
