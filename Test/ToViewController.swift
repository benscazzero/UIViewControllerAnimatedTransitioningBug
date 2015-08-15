//
//  ViewController.swift
//  Test
//
//  Copyright © 2015 Zero. All rights reserved.
//

import UIKit

class ToViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        print("ToVC: viewDidAppear")
        print("ToVC: \(self.view.frame)")
        print("ToChildVC: \(self.childViewControllers.first?.view.frame)")
    }

    @IBAction func goBack(sender: AnyObject!) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

