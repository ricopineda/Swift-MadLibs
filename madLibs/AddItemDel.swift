//
//  AddItemDel.swift
//  madLibs
//
//  Created by Andrew Lau on 9/12/17.
//  Copyright © 2017 Andrew Lau. All rights reserved.
//

import UIKit

protocol AddItemDel: class {
    func addItemPressed(by controller: UIViewController, data: [String])
}
