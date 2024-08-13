// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import protocol Catena.Fields
import protocol Catena.Valued

public protocol FilterFields: Fields where Model: Valued<Filter> {}
