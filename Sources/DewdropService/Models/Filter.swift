// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import protocol Identity.Identifiable

// MARK: -
public extension Filter {
	typealias ID = Identified<Self, String>.ID
}
