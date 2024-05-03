// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Media
import struct Foundation.URL
import struct Foundation.Date

@Init public struct RaindropImportFields {
	public let url: URL
	public let title: String
	public let excerpt: String?
	public let coverURL: URL?
	public let media: [Media]
	public let note: String?
	public let isFavorite: Bool
	public let creationDate: Date
	public let updateDate: Date
	public let tags: [TagNameFields]
	public let highlights: [HighlightImportFields]?
}
