// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import protocol Identity.Identifiable

@Init public struct IDFields<Model: Identifiable>: Sendable where Model.RawIdentifier: Sendable {
	public let id: Model.ID
}
