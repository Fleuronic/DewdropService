// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import protocol Catena.Fields
import protocol Catena.Valued

public protocol CollectionFields: Fields where Model: Valued<Collection> {}

extension ModelFields: CollectionFields where Model == Collection {}
