//
//  ViewController.swift
//  TheRealPoCo
//
//  Created by Ari Rapalino on 4/30/18.
//  Copyright © 2018 Ari Rapalino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var responseText: UILabel!

    
    @IBAction func buttonAction(_ sender: Any) {
        let keyWords = ["test1","test2","test3"]
        if (keyWords.contains(textField.text as! String!)){
            responseText.setValue("Not PoCo", forKey: "text")
        }else{
            responseText.setValue("PoCo!!", forKey: "text")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

