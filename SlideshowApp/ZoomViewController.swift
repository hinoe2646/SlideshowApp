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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zoomImage.image = zoomView
        
        
        
        // Do any additional setup after loading the view.
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}

