//
//  ViewController.swift
//  test
//
//  Created by Haydar Bekmuradov on 14.05.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonAction(_ sender: Any) {
        
        let anotherVC = AnotherViewController()
        navigationController?.pushViewController(anotherVC, animated: true )
    }
    
}

