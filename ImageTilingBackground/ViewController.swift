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
        let color = UIColor(patternImage: image)
        self.scrollViewContentView.backgroundColor = color
    }
}

