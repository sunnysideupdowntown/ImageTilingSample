//
//  ViewController.swift
//  ImageTilingBackground
//
//  Created by YOUNGSUN on 2/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollViewContentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "brick-2997965_640.png")!
        let aspectRatio = CGFloat(image.cgImage!.width) / CGFloat(image.cgImage!.height)
        let size = CGSize(width: self.view.bounds.width, 
                          height: self.view.bounds.width / aspectRatio)
        let resizedImage = UIGraphicsImageRenderer(size: size).image { _ in
            image.draw(in: CGRect(origin: .zero, size: size))
        }
        let color = UIColor(patternImage: resizedImage)
        self.scrollViewContentView.backgroundColor = color
    }
}

