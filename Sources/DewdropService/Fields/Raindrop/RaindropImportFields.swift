// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Raindrop
public import struct Dewdrop.Media
public import struct Foundation.URL
public import struct Foundation.Date
public import protocol Catena.Fields

@MemberwiseInit(.public)
public struct RaindropImportFields {
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
