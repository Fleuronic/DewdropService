// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import protocol Catena.Fields

public protocol TagFields: Fields where Model == Tag {}

extension ModelFields: TagFields where Model == Tag {}
