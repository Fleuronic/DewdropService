// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Raindrop
import struct Dewdrop.Media
import struct Foundation.URL
import struct Foundation.Date
import protocol Catena.Fields

@Init public struct RaindropImportFields {
	public let url: URL
	public let title: String
	public let excerpt: String?
	public let coverURL: URL?
	public let note: String?
	public let media: [Media]
	public let isFavorite: Bool
	public let creationDate: Date
	public let updateDate: Date
	public let tags: [TagNameFields]
	public let highlights: [HighlightImportFields]?
}

extension RaindropImportFields: Fields {
	public typealias Model = Raindrop
}
