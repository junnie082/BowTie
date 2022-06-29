//
//  ColorAttributeTransformer.swift
//  BowTies2
//
//  Created by Hyojeong_Jun on 2022/06/29.
//

import UIKit

class ColorAttributeTransformer: NSSecureUnarchiveFromDataTransformer {

    // 1
    override static var allowedTopLevelClasses: [AnyClass] {
        [UIColor.self]
    }
    
    // 2
    static func register() {
        let className = String(describing: ColorAttributeTransformer.self)
        let name = NSValueTransformerName(className)
        
        let transformer = ColorAttributeTransformer()
        ValueTransformer.setValueTransformer(transformer, forName: name)
    }
}
