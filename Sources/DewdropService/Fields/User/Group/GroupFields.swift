// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Group
import protocol Catena.Fields
import protocol Catena.Valued

public protocol GroupFields: Fields where Model == Group.Identified {}
