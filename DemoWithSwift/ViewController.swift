//
//  ViewController.swift
//  DemoWithSwift
//
//  Created by zsp on 2018/12/28.
//  Copyright © 2018 woop. All rights reserved.
//

import UIKit
import CoreGraphics
import Foundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addLayer()
    }
    
    func addLayer() {
        view.backgroundColor=UIColor.lightGray;
        let finalSize = CGSize(width: view.frame.size.width, height: 400)
        let layerHeight = finalSize.height * 0.2
        let layer = CAShapeLayer()
        let bezier = UIBezierPath()
        bezier.move(to: CGPoint(x: 0, y: finalSize.height - layerHeight))
        bezier.addLine(to: CGPoint(x: 0, y: finalSize.height - 1))
        bezier.addLine(to: CGPoint(x: finalSize.width, y: finalSize.height - 1))
        bezier.addLine(to: CGPoint(x:finalSize.width, y:finalSize.height - layerHeight))
        bezier.addQuadCurve(to: CGPoint(x:0,y:finalSize.height - layerHeight),
                            controlPoint: CGPoint(x:finalSize.width / 2, y:(finalSize.height - layerHeight) - 40))
        layer.path = bezier.cgPath
        layer.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer)
    }
    
}

