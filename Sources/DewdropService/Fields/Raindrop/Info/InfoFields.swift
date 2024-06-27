// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Catena.Fields

public protocol InfoFields: Fields where Model == Raindrop.Info {}

extension ModelFields: InfoFields where Model == Raindrop.Info {}
