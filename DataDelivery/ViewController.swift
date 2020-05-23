//
//  ViewController.swift
//  DataDelivery
//
//  Created by Ahn on 2020/05/23.
//  Copyright © 2020 ozofweird. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DelegateProtocol {

    @IBOutlet weak var unwindLabel: UILabel!
    @IBOutlet weak var delegateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Unwind
    @IBAction func unwindFromUVC(_ sender: UIStoryboardSegue) {
        guard let uvc = sender.source as? UnwindController else {
            return
        }
        self.unwindLabel.text = uvc.unwindTextField.text
    }

    /* ****************************************** */
    
    // Protocol 메소드
    func sendData(data: String) {
        delegateLabel.text = data
    }
    
    // 화면 전환 전에 데이터를 처리할 수 있는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "delegateSegue" {
            let dvc: DelegateController = segue.destination as! DelegateController
            dvc.delegateProtocol = self
        }
    }


}

