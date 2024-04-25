// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import protocol Catena.API

@Init public struct Service<API: Catena.API> {
	let api: API
}

// MARK: -
public extension Service {
	typealias APIResult<Resource> = API.Result<Resource>
}
