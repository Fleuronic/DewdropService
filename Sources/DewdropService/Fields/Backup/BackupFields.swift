// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup
import protocol Catena.Fields
import protocol Catena.Valued

public protocol BackupFields: Fields where Model: Valued<Backup> {}

// MARK: -
extension ModelFields: BackupFields where Model == Backup {}
