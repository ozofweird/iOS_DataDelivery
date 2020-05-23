//
//  DelegateController.swift
//  DataDelivery
//
//  Created by Ahn on 2020/05/23.
//  Copyright © 2020 ozofweird. All rights reserved.
//

import UIKit

protocol DelegateProtocol {
    func sendData(data: String)
}

class DelegateController: UIViewController {

    @IBOutlet weak var delegateTextField: UITextField!
    
    var delegateProtocol: DelegateProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func delegateBtn(_ sender: Any) {
        if let data = delegateTextField.text {
            delegateProtocol?.sendData(data: data)
            dismiss(animated: true, completion: nil)
        }
    }
}
