// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import protocol Catena.Fields
import protocol Catena.Valued

public protocol FilterFields: Fields, Sendable where Model: Valued<Filter> {}

// MARK: -
extension ModelFields: FilterFields where Model == Filter {}
