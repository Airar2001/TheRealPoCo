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
    func keyWordsFinder (for regex:String, in text:String) -> [String]{
        do{
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
            return results.map {
                String(text[Range($0.range, in: text)!])
            }
        }catch let error{
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        let keyWords = textField.text?.lowercased()
        let words = ["hi","hello"]
        var notPoCo = false;
        for word in words {
            let matched = keyWordsFinder(for: word, in: keyWords!)
            if (matched.count > 0){
                notPoCo = true;
                break;
            }
        }
        if (notPoCo){
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

