//
//  AnimationController.swift
//  Test
//
//  Copyright © 2015 Zero. All rights reserved.
//

import Foundation
import UIKit

class AnimationController: NSObject,  UIViewControllerAnimatedTransitioning {
        
    override init() {
        super.init()
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 1.0
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        let toChildViewController = toViewController.childViewControllers.first!
        
        
        toViewController.view.alpha = 0.0
        transitionContext.containerView()?.addSubview(toViewController.view)
        toViewController.view.setNeedsLayout()
        toViewController.view.layoutIfNeeded()
        
        print("Animation Controller")
        print("ToVC: \(toViewController.view.frame) ")
        print("ToChildVC: \(toChildViewController.view.frame)")
        print("Screen: \(UIScreen.mainScreen().bounds)")

        
        UIView.animateWithDuration(self.transitionDuration(transitionContext), animations: { () -> Void in
            toViewController.view.alpha = 1.0
        }, completion: { (complete) -> Void in
            transitionContext.completeTransition(complete)
        })
    }
}