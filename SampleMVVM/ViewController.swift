//
//  ViewController.swift
//  SampleMVVM
//
//  Created by Chander Narsingoju on 23/08/18.
//  Copyright © 2018 Chander Narsingoju. All rights reserved.
//

import UIKit

/// ViewController is class that handles the home view.
class ViewController: UIViewController {
    // MARK: Variables
    @IBOutlet weak var nameLabel: UILabel!
    /// No of legs variable
    @IBOutlet weak var numberOfLegsLabel: UILabel!
    /// Description variable
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var getDetailsBtn: UIButton!
    
    // MARK: Methods
    /// Called after the view has been loaded. For view controllers created in code, this is after -loadView. For view controllers unarchived from a nib, this is after the view is set.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
        
    }

    /// Called when the parent application receives a memory warning. On iOS 6.0 it will no longer clear the view by default.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func getDogViewModel(name: String) -> DogViewModel {
        let model = DogViewModel(name: name)
        return model
    }

    @IBAction func getDetailsBtnAction(_ sender: Any) {
        
        let model = getDogViewModel(name: "Tommy")
        
        nameLabel.text = model.dogName
        numberOfLegsLabel.text = model.dogLegs
        descriptionLabel.text = model.dogNameAndLegs
    }
}

