//
//  ViewController.swift
//  UIPageControl
//
//  Created by Saumeel Gajera on 8/8/16.
//  Copyright © 2016 walmart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        let pageWidth = scrollView.bounds.width
        let pageHeight = scrollView.bounds.height
        
        scrollView.contentSize = CGSizeMake(3*pageWidth, pageHeight)
        scrollView.pagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = true
        
        let label = UILabel(frame: CGRect(x: 110, y: 10, width: pageWidth/3, height: pageHeight/10))
        label.text = "Header Here"
        
        let subView = UIView(frame: CGRect(x: 0, y: 0, width: pageWidth, height: pageHeight/3))
        subView.backgroundColor = UIColor.lightGrayColor()
        subView.addSubview(label)
        
        let view1 = UIView(frame: CGRect(x: 0,y: 0,width: pageWidth, height: pageHeight))
        view1.backgroundColor = UIColor.blueColor()
        view1.addSubview(subView)
        
        
        let view2 = UIView(frame: CGRect(x: pageWidth,y: 0,width: pageWidth, height: pageHeight))
        view2.backgroundColor = UIColor.redColor()
        let view3 = UIView(frame: CGRect(x: 2*pageWidth,y: 0,width: pageWidth, height: pageHeight))
        view3.backgroundColor = UIColor.greenColor()
        
        scrollView.addSubview(view1)
        scrollView.addSubview(view2)
        scrollView.addSubview(view3)
        
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        let page: Int = Int(round(scrollView.contentOffset.x/320))
        
        print(page)
        pageControl.currentPage = page
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("scroll view did scroll : \(scrollView.contentOffset)")
    }


}

