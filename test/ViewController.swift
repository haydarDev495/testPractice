//
//  ViewController.swift
//  test
//
//  Created by Haydar Bekmuradov on 14.05.22.
//

import UIKit

class ViewController: UIViewController, DelegateVC{
    
    @IBOutlet weak var labelTextFromDelegate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mercedes = Car(name: "Mercedes Benz", countWheel: 4, color: "Black")
        mercedes.signal()
        mercedes.drive()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getData" {
            let destinationVC = segue.destination as! DelegateViewController
            destinationVC.delegate = self
        }
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        let anotherVC = AnotherViewController()
        navigationController?.pushViewController(anotherVC, animated: true )
    }
    
    func fillLabelWih(info: String) {
        labelTextFromDelegate.text = info
    }
    
    @IBAction func goToDelegateScreenButtonAction(_ sender: Any) {
        
    }
    
}

