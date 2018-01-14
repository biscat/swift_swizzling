//
//  UILabel+extensions.swift
//  Swizzle
//
//  Created by william wong on 14/01/2018.
//  Copyright © 2018 william wong. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    static let classInit: Void = {
        swizzleImplementation()
    }()
    
    @objc private func setText(newValue: String) {
        self.setText(newValue: newValue)
        accessibilityValue = newValue
        print("sizzeled!")
        print("text: \(String(describing: text))")
        print("value: \(String(describing: accessibilityValue))")
    }
    
    private class func swizzleImplementation() {
        let originalSelector = #selector(setter: UILabel.text)
        let swizzledSelector = #selector(UILabel.setText(newValue:))
        let originalMethod = class_getInstanceMethod(UILabel.self, originalSelector);
        let swizzledMethod = class_getInstanceMethod(UILabel.self, swizzledSelector)
        method_exchangeImplementations(originalMethod!, swizzledMethod!)
    }
}
