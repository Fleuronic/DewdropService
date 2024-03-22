// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import protocol Catenary.API

@Init public struct Service<
	API: Catenary.API
> {
	let api: API
}

// MARK: -
public extension Service {
	typealias APIResult<Resource> = API.Result<Resource>
}
