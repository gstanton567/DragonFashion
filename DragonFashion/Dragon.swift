//
//  Dragon.swift
//  DragonFashion
//
//  Created by Grayson Stanton on 5/21/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import Foundation
class Dragon {
    var textDescription: String!
    var signatureAccessory : String!
    var name: String!
    init(name: String, signatureAccessory: String)
    {
        self.name = name
        self.signatureAccessory = signatureAccessory
        self.textDescription = "\(name) is never fully dressed without \(signatureAccessory)"
    }
}
