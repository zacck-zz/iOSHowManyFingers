//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Isaac Osiemo on 1/7/15.
//  Copyright (c) 2015 appbaseLtd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mFingersNo: UITextField!
    
    @IBOutlet var mLabelResult: UILabel!
    
    @IBAction func mTryButton(sender: AnyObject) {

        var randNo = arc4random_uniform(6)
        
        var mGuess = mFingersNo.text.toInt()
        
        if  mGuess != nil
        {
        if Int(randNo) == mGuess
        {
            mLabelResult.text = "You are correct"
        }
        else
        {
            mLabelResult.text = "I was holding \(randNo)"
        }
        }
        else
        {
                mLabelResult.text = "Please Enter A number 1 -5 "
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mLabelResult.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

