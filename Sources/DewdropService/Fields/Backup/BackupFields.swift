// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup
import protocol Catena.Fields
import protocol Catena.Valued

public protocol BackupFields: Fields where Model == Backup {}

// MARK: -
extension ModelFields: BackupFields where Model == Backup {}
