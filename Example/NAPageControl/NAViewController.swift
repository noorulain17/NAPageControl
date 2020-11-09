//
//  NAViewController.swift
//  NAPageControl
//
//  Created by Noor ul Ain Ali on 09/11/2020.
//  Copyright © 2020 Spaceman Labs. All rights reserved.
//

import UIKit

class NAViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl?
    @IBOutlet weak var spacePageControl1: NAPageControl?
    @IBOutlet weak var spacePageControl2: NAPageControl?
    @IBOutlet weak var spacePageControl3: NAPageControl?
    @IBOutlet weak var spacePageControl4: NAPageControl?
    @IBOutlet weak var spacePageControl5: NAPageControl?
    @IBOutlet weak var spacePageControl6: NAPageControl?
    @IBOutlet weak var spacePageControl7: NAPageControl?
    @IBOutlet weak var spacePageControl8: NAPageControl?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "retro_intro")!)
    
        self.spacePageControl1?.numberOfPages = 10
        self.spacePageControl2?.numberOfPages = 10
        self.spacePageControl3?.numberOfPages = 10
        self.spacePageControl4?.numberOfPages = 10
        self.spacePageControl5?.numberOfPages = 10
        self.spacePageControl6?.numberOfPages = 10
        self.spacePageControl7?.numberOfPages = 10
        self.spacePageControl8?.numberOfPages = 10
        
        self.spacePageControl2?.indicatorMargin = 20.0
        self.spacePageControl2?.indicatorDiameter = 10.0
        
        self.spacePageControl3?.alignment = NAPageControlHorizontalAlignment.left
        self.spacePageControl4?.alignment = NAPageControlHorizontalAlignment.right
        
        self.spacePageControl5?.pageIndicatorImage = UIImage(named: "pageDot")
        self.spacePageControl5?.currentPageIndicatorImage = UIImage(named: "currentPageDot")

        self.spacePageControl6?.pageIndicatorImage = UIImage(named:"pageDot")
        self.spacePageControl6?.currentPageIndicatorImage = UIImage(named: "currentPageDot")
        self.spacePageControl6?.setImage(UIImage(named: "searchDot")!, forPage: 0)
        self.spacePageControl6?.setCurrentImage(UIImage(named: "currentSearchDot")!, forPage: 0)
        self.spacePageControl6?.setImage(UIImage(named: "appleDot")!, forPage: 1)
        self.spacePageControl6?.setCurrentImage(UIImage(named: "currentAppleDot")!, forPage: 1)
        self.spacePageControl6?.setName("Search", forPage: 0)
        self.spacePageControl6?.setName("Apple", forPage: 1)

        self.spacePageControl6?.currentPage = 1
        
        self.spacePageControl7?.pageIndicatorTintColor = UIColor.darkGray.withAlphaComponent(0.7)
        self.spacePageControl7?.currentPageIndicatorTintColor = UIColor.yellow
        self.spacePageControl7?.setImageMask(UIImage(named: "appleMask")!, forPage: 1)
        self.spacePageControl7?.setImageMask(UIImage(named: "searchMask")!, forPage: 0)

        self.spacePageControl8?.pageIndicatorTintColor = UIColor.red.withAlphaComponent(0.2)
        self.spacePageControl8?.currentPageIndicatorTintColor = UIColor.red
        self.spacePageControl8?.pageIndicatorMaskImage = UIImage(named: "appleMask")
            
        self.pageControl?.addTarget(self, action: #selector(pageControlChanged(sender:)), for: .valueChanged)
        self.spacePageControl1?.addTarget(self, action: #selector(spacePageControl(sender:)), for: .valueChanged)
        self.spacePageControl2?.addTarget(self, action: #selector(spacePageControl(sender:)), for: .valueChanged)
        self.spacePageControl3?.addTarget(self, action: #selector(spacePageControl(sender:)), for: .valueChanged)
        self.spacePageControl4?.addTarget(self, action: #selector(spacePageControl(sender:)), for: .valueChanged)
        self.spacePageControl5?.addTarget(self, action: #selector(spacePageControl(sender:)), for: .valueChanged)
        self.spacePageControl6?.addTarget(self, action: #selector(spacePageControl(sender:)), for: .valueChanged)
        self.spacePageControl7?.addTarget(self, action: #selector(spacePageControl(sender:)), for: .valueChanged)
        self.spacePageControl8?.addTarget(self, action: #selector(spacePageControl(sender:)), for: .valueChanged)
    }

    @objc func pageControlChanged(sender: Any) {
        print("Current Page (UIPageControl) : %i", self.pageControl?.currentPage ?? 0)
    }

    @objc func spacePageControl(sender: NAPageControl) {
        print("Current Page (NAPageControl): %li", sender.currentPage);
    }
    
}
