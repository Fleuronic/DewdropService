// Copyright © Fleuronic LLC. All rights reserved.

import protocol Identity.Identifiable

public struct IDFields<Model: Identifiable> where Model.ID: Decodable {
	public let id: Model.ID
}

extension IDFields: Decodable {
	enum CodingKeys: String, CodingKey {
		case id = "$id"
	}
}
