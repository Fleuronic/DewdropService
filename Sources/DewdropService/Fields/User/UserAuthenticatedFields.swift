// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Catena.IDFields

public protocol UserAuthenticatedFields: UserFields {}

// MARK: -
extension IDFields: UserAuthenticatedFields where Model == User.Identified {}
