// Copyright © Fleuronic LLC. All rights reserved.


import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Dewdrop.Group
import struct Dewdrop.Tag
import struct Dewdrop.Filter
import struct Dewdrop.Highlight
import struct Dewdrop.Backup
import struct Dewdrop.User
import struct Catena.IDFields

extension IDFields: DewdropService.RaindropFields where Model == Raindrop.Identified {}
extension IDFields: DewdropService.CollectionFields where Model == Collection.Identified {}
extension IDFields: DewdropService.GroupFields where Model == Group.Identified {}
extension IDFields: DewdropService.TagFields where Model == Tag.Identified {}
extension IDFields: DewdropService.FilterFields where Model == Filter.Identified {}
extension IDFields: DewdropService.HighlightFields where Model == Highlight.Identified {}
extension IDFields: DewdropService.BackupFields where Model == Backup.Identified {}
extension IDFields: DewdropService.UserFields where Model == User.Identified {}
extension IDFields: DewdropService.UserAuthenticatedFields where Model == User.Identified {}
