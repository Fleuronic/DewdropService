// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import protocol Catena.Fields

public protocol UserFields: Fields where Model == User {}

extension ModelFields: UserFields where Model == User {}
