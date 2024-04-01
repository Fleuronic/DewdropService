// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection

public protocol CollectionSpec {
	associatedtype CollectionListResult
	associatedtype CollectionDetailsResult
	associatedtype CollaboratorListResult
	associatedtype CoverListResult

	func listRootCollections() async -> CollectionListResult
	func listChildCollections() async -> CollectionListResult
	func fetchCollectionDetails(with id: Collection.ID) async -> CollectionDetailsResult
	func listCollaborators(ofCollectionWith id: Collection.ID) async -> CollaboratorListResult
	func searchForCovers(with text: String) async -> CoverListResult
	func listFeaturedCovers() async -> CoverListResult
}
