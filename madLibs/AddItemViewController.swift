//
//  AddItemViewController.swift
//  madLibs
//
//  Created by Andrew Lau on 9/12/17.
//  Copyright © 2017 Andrew Lau. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    
    @IBOutlet weak var adjectiveText: UITextField!
    @IBOutlet weak var verb1Text: UITextField!
    @IBOutlet weak var verb2Text: UITextField!
    @IBOutlet weak var nounText: UITextField!
    
    var delegate: AddItemDel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addItemPressed(_ sender: UIButton) {
        var data: [String] = []
        data.append(adjectiveText.text!)
        data.append(verb1Text.text!)
        data.append(verb2Text.text!)
        data.append(nounText.text!)
        delegate?.addItemPressed(by:self,data: data)
        
    }

}
