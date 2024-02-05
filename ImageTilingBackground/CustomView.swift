//
//  CustomView.swift
//  ImageTilingBackground
//
//  Created by YOUNGSUN on 2/5/24.
//

import UIKit

class CustomView: UIView {
    
    private var backgroundPatternColor: UIColor?
    
    override func draw(_ rect: CGRect) {
        guard let color = self.backgroundPatternColor,
              let context = UIGraphicsGetCurrentContext()
        else {
            super.draw(rect)
            return
        }
        
        context.setPatternPhase(CGSize(width: 100, height: 0))
        context.setFillColor(color.cgColor)
        context.fill([rect])
        
        super.draw(rect)
    }
    
    func setBackgroundPatternColor(_ color: UIColor) {
        self.backgroundPatternColor = color
    }
}
