// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup
import protocol Catena.Fields

public protocol BackupFields: Fields where Model == Backup {}

extension ModelFields: BackupFields where Model == Backup {}
