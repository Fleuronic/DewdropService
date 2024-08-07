// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.AccessToken
import struct Foundation.URL

public protocol AccessTokenSpec {
	associatedtype ExchangedToken
	associatedtype RefreshedToken

	func exchangeCodeForAccessToken(code: String, redirectingTo uri: URL) async -> ExchangedToken
	func refreshAccessToken(_ token: AccessToken) async -> RefreshedToken
}
