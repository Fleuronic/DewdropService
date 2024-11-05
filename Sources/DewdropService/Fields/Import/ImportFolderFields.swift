// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

@MemberwiseInit(.public)
public struct ImportFolderFields: ImportFields {
	public let folders: [FolderDetailsFields]
}
