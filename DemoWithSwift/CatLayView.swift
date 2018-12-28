//
//  CatLayView.swift
//  DemoWithSwift
//
//  Created by zsp on 2018/12/28.
//  Copyright © 2018 woop. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics
import QuartzCore

class CatLayView: UIView {
    
    override func draw(_ rect: CGRect) {
        let aPath:UIBezierPath = UIBezierPath()
        aPath.lineWidth = 15
//        aPath.lineCapStyle = kCALineCapButt as CGLineCap
//        aPath.lineJoinStyle = kCALineJoinBevel as CGLineJoin
        
        aPath.move(to: CGPoint(x: 150, y: 30))
        aPath.addLine(to: CGPoint(x: 250, y: 70))
        aPath.addLine(to: CGPoint(x: 210, y: 170))
        aPath.addLine(to: CGPoint(x: 90, y: 170))
        aPath.addLine(to: CGPoint(x: 50, y: 70))
        aPath.close()
        
        let strokeColor = UIColor.red
        strokeColor.set()
        aPath.stroke()
        
        let fillColor = UIColor.blue
        fillColor.set()
        aPath.fill()
        
    }
}
