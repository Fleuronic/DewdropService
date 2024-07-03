// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Catena.Fields

public protocol InfoFields: Fields, Sendable where Model == Raindrop.Info {}
