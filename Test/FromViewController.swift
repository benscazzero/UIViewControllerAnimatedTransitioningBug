//
//  FromViewController.swift
//  Test
//
//  Copyright © 2015 Zero. All rights reserved.
//

import Foundation
import UIKit

class FromViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AnimationController()
    }

    
    @IBAction func go(sender: AnyObject!) {
        self.performSegueWithIdentifier("transition", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let toViewController = segue.destinationViewController as UIViewController
        toViewController.transitioningDelegate = self
        toViewController.modalPresentationStyle = .Custom
    }
}