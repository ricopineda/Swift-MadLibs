//
//  ViewController.swift
//  madLibs
//
//  Created by Andrew Lau on 9/12/17.
//  Copyright © 2017 Andrew Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController , AddItemDel{
    
    @IBOutlet weak var madLibLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let addItemViewController = segue.destination as! AddItemViewController
        addItemViewController.delegate = self
    }
    func addItemPressed(by controller: UIViewController, data: [String]){
//        print(data)
        let message = "We are having a perfectly \(data[0]) time now. Later we will \(data[1]) and \(data[2]) in the \(data[3])."
        madLibLabel.text = message
        dismiss(animated: true, completion: nil)
    }
}

