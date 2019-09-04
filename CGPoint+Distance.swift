//
//  CGPoint+Distance.swift
//  PTCardTabBar
//
//  Created by Hussein AlRyalat on 9/2/19.
//  Copyright © 2019 SketchMe. All rights reserved.
//

import UIKit

extension CGPoint {
    func distance(to point: CGPoint) -> CGFloat {
        return hypot(self.x - point.x, self.y - point.y)
    }
}
