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
        addCatLayView()
        addImage()
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
    
    func addCatLayView() {
        let catLayView = CatLayView()
        catLayView.frame = CGRect(x: 10, y: 80, width: 300, height: 200)
        view.addSubview(catLayView)
    }
    
    func addImage() {
        let imageView = UIImageView(image: UIImage(named: "xxx"))
        
        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        imageView.center = view.center
        //高性能设置圆角
        UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, UIScreen.main.scale)
        UIBezierPath(roundedRect: imageView.bounds, cornerRadius: imageView.bounds.width).addClip()
        imageView.draw(imageView.bounds)
        imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        view.addSubview(imageView)
        
    }
    
}

