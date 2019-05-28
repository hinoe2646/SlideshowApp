//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by 石井 美記夫 on 2019/05/27.
//  Copyright © 2019 hinoe2646. All rights reserved.
//

import UIKit

class ZoomViewController: UIViewController {

    @IBOutlet weak var zoomImage: UIImageView!
    
    
    var zoomView = UIImage()
    
    let image = ["image1", "image2", "image3"]
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zoomImage.image = UIImage(named: image[count])
        
        // Do any additional setup after loading the view.
    }

}

