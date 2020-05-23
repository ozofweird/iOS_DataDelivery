//
//  UnwindController.swift
//  DataDelivery
//
//  Created by Ahn on 2020/05/23.
//  Copyright © 2020 ozofweird. All rights reserved.
//

import UIKit

class UnwindController: UIViewController {

    @IBOutlet weak var unwindTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
/*
    // 1. _ sender: Any
    @IBAction func unwindBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
 */
    
    @IBAction func unwindBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: self)
    }
    

}
