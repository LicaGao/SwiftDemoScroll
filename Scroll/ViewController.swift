//
//  ViewController.swift
//  Scroll
//
//  Created by 高鑫 on 2017/10/19.
//  Copyright © 2017年 高鑫. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var scrollView : UIScrollView!
    var titleView : UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView()
        scrollView.delegate = self
        scrollView.frame = self.view.frame
        let imgView = UIView()
        let zg = UIImageView()
        zg.image = UIImage(named: "zg")
        zg.frame.size = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.width)
        zg.frame.origin = CGPoint(x: 0, y: 0)
        let ys = UIImageView()
        ys.image = UIImage(named: "ys")
        ys.frame.size = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.width)
        ys.frame.origin = CGPoint(x: 0, y: zg.frame.origin.y + zg.frame.size.height + 10)
        let zg2 = UIImageView()
        zg2.image = UIImage(named: "zg")
        zg2.frame.size = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.width)
        zg2.frame.origin = CGPoint(x: 0, y: ys.frame.origin.y + ys.frame.size.height + 10)
        let ys2 = UIImageView()
        ys2.image = UIImage(named: "ys")
        ys2.frame.size = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.width)
        ys2.frame.origin = CGPoint(x: 0, y: zg2.frame.origin.y + zg2.frame.size.height + 10)
        let zg3 = UIImageView()
        zg3.image = UIImage(named: "zg")
        zg3.frame.size = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.width)
        zg3.frame.origin = CGPoint(x: 0, y: ys2.frame.origin.y + ys2.frame.size.height + 10)
        let ys3 = UIImageView()
        ys3.image = UIImage(named: "ys")
        ys3.frame.size = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.width)
        ys3.frame.origin = CGPoint(x: 0, y: zg3.frame.origin.y + zg3.frame.size.height + 10)
        
        imgView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width * 6 + 50)
        let atm :[UIImageView] = [zg, ys, zg2, ys2, zg3, ys3]
        for i in atm {
            imgView.addSubview(i)
        }
        scrollView.contentSize = imgView.bounds.size
        scrollView.addSubview(imgView)
        self.view.addSubview(scrollView)
        
        titleView = UIView()
        titleView.backgroundColor = UIColor.white
        titleView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 64)
        titleView.alpha = 0
        let title = UILabel()
        title.text = "演示"
        title.frame.size = CGSize(width: 200, height: 50)
        title.textAlignment = .center
        title.font = UIFont(name: "HelveticaNeue-Light", size: 20)
        title.center.x = titleView.center.x
        title.center.y = titleView.center.y + 10
        titleView.addSubview(title)
        self.view.addSubview(titleView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let min : CGFloat = -20
        let max : CGFloat = 84
        let offset = scrollView.contentOffset.y
        print("\(offset)")
        let alpha = (offset - min) / (max - min)
        print("\(alpha)")
        titleView.alpha = alpha
    }


}

