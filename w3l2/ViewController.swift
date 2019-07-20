//
//  ViewController.swift
//  w3l2
//
//  Created by finn on 2019/7/20.
//  Copyright © 2019 finn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer:Timer!
    var views:[UIView] = [UIView].init()
    var counter = 0.0
    var speed = 2.0
    
    @IBOutlet weak var segmentAction: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        views = self.view.subviews
        //        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(nextCenter), userInfo: nil, repeats: true)
        //        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        //        myView.backgroundColor = UIColor.red
        //        myView.alpha = 0.3
        //        myView.center = self.view.center
        //        self.view.addSubview(myView)
    }
    
    //    override func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(animated)
    //        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 70, height: 100))
    //            newView.center = view.self.center
    //            newView.backgroundColor = UIColor.red
    //            newView.transform = CGAffineTransform(rotationAngle: 0.0)
    //    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 70, height: 100))
        newView.center = view.self.center
        newView.backgroundColor = UIColor.red
        newView.transform = CGAffineTransform(rotationAngle: 0.0)
        view.addSubview(newView)
        //        block: {(timer) in self.ratateView(targetView: newView)} >>> timer means closure
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: {(timer) in self.ratateView(targetView: newView)})
        //        let myView = UIView(frame:  CGRect(x: 0, y: 0, width: 70, height: 100))
        //            myView.backgroundColor = UIColor.red
        //            myView.center = view.center
        //        let angle = 135 * Double.pi / 180
        //            myView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        //        self.view.addSubview(myView)
        
        //        for subview in self.view.subviews{
        //            subview.center = self.view.center
        //        }
    }
    func ratateView(targetView:UIView)
    {
        let angle = counter * Double.pi / 180
        targetView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        counter += speed
        //        if self.segmentAction.selectedSegmentIndex == 0 {
        //            counter += speed
        //        }else        {
        //            counter -= speed
        //        }
        
        //        print(counter)
    }
    //    @objc func nextCenter(){
    //        //views[counter].center = self.view.center
    ////        counter += 1
    ////       if counter >= views.count {
    ////            timer.invalidate()
    ////        }
    //    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        //        let a = sender.selectedSegmentIndex
        //        switch a {
        //        case 0:
        //            speed = 1.5
        //            break
        //        case 1:
        //            speed = 8.32
        //            break
        //        case 2:
        //            speed = 16.11
        //            break
        //        case 3:
        //            speed = 44.37
        //            break
        //        default:
        //            break
        //        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let slider = sender.value
        //        print(slider)
        speed = Double(slider)
    }
}

