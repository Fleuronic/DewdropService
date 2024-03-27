// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import protocol Identity.Identifiable

@Init public struct IDFields<Model: Identifiable> {
	public let id: Model.ID
}
