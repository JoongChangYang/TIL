//
//  CGFloat.swift
//  AVKitExample
//
//  Created by 양중창 on 2020/03/22.
//  Copyright © 2020 didwndckd. All rights reserved.
//

import UIKit

extension CGFloat {
    
    static func dinamicXMargin(margin: CGFloat) -> CGFloat {
        let bounds = UIScreen.main.bounds
        let width = bounds.width
        let base: CGFloat = 375.0
        let multiflire = width / base
        let result = (margin * multiflire)
        return result
    }
    
    static func dinamicYMargin(margin: CGFloat) -> CGFloat {
        let bounds = UIScreen.main.bounds
        let height = bounds.size.height
        let base: CGFloat = 812.0 // 11Pro, iphone X, XS => 5.8 inch
        let multiflire = height / base
        let result = (margin * multiflire)
        return result
    }
    
}
