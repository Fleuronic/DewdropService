// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import protocol Catena.Fields

public protocol CollectionFields: Fields where Model == Collection {}

extension ModelFields: CollectionFields where Model == Collection {}
