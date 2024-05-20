// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import protocol Catena.Fields

public protocol FilterFields: Fields where Model == Filter {}

extension ModelFields: FilterFields where Model == Filter {}
