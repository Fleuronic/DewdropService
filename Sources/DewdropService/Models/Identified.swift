// Copyright © Fleuronic LLC. All rights reserved.

import protocol Identity.Identifiable

public struct Identified<Value, RawIdentifier>: Identifiable {
	public let id: ID

	let value: Value
}
