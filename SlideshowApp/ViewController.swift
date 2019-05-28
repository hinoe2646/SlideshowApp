//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 石井 美記夫 on 2019/05/27.
//  Copyright © 2019 hinoe2646. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ホーム画面
    @IBOutlet weak var imageView: UIImageView!
    
    // ButtonTitleの管理
    @IBOutlet weak var gotext: UIButton!
    @IBOutlet weak var backtext: UIButton!
    @IBOutlet weak var slidetext: UIButton!
    
    
    // 画面をタップして拡大画像画面へ

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let zoomViewController:ZoomViewController = segue.destination as! ZoomViewController
        zoomViewController.zoomView = UIImage(named: image[count])!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    // 画像の管理
    let image = ["image1", "image2", "image3"]
    // 表示する画像の管理用
    var count = 0
    
    // タイマー
    var timer: Timer!
    
    // タイマー用の時間のための変数
    var timer_sec: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 起動後の表示画像
        imageView.image = UIImage(named: image[count])
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if count < 2 {
            count += 1
        } else {
            count -= 2
        }
        imageView.image = UIImage(named: image[count])
    }

    @IBAction func returnButton(_ sender: Any) {
        if count > 0 {
            count -= 1
        } else {
            count += 2
        }
        imageView.image = UIImage(named: image[count])
    }

    @IBAction func startstop(_ sender: Any) {
        slidetext.setTitle("停止", for: .normal)
        gotext.isEnabled = false
        backtext.isEnabled = false
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        } else {
            self.timer.invalidate()     // タイマーを停止する
            self.timer = nil
            slidetext.setTitle("再生", for: .normal)
            gotext.isEnabled = true
            backtext.isEnabled = true
        }
    }

    @objc func updateTimer(_ timer: Timer) {
        if count < 2 {
            count += 1
        } else {
            count -= 2
        }
        imageView.image = UIImage(named: image[count])
    }

}
