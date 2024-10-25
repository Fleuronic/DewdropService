// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.AccessToken
public import struct Foundation.URL

public protocol AccessTokenSpec {
	associatedtype ExchangedToken
	associatedtype RefreshedToken

	func exchangeCodeForAccessToken(code: String, redirectingTo uri: URL) async -> ExchangedToken
	func refreshAccessToken(_ token: AccessToken) async -> RefreshedToken
}
