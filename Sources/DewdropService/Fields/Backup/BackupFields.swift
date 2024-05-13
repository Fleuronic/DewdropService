// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup

public protocol BackupFields: Fields {}

extension ModelFields: BackupFields where Model == Backup {}
