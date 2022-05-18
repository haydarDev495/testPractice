//
//  DelegateViewController.swift
//  test
//
//  Created by Haydar Bekmuradov on 18.05.22.
//

protocol DelegateVC {
    func fillLabelWih(info: String)
}

import UIKit

class DelegateViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextField!
    
    var delegate : DelegateVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func sendDataButtonAction(_ sender: Any) {
        
        guard let info = textView.text else { return }
        delegate?.fillLabelWih(info: info)
        navigationController?.popViewController(animated: true)
    }
}
