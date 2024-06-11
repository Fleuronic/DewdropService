// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Catena.Fields

public protocol RaindropFields: Fields where Model == Raindrop {}

extension ModelFields: RaindropFields where Model == Raindrop {}
