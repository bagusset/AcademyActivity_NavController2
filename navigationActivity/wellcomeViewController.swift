//
//  wellcomeViewController.swift
//  navigationActivity
//
//  Created by Bagus setiawan on 09/04/20.
//  Copyright © 2020 Bagus setiawan. All rights reserved.
//

import UIKit

class wellcomeViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.destination is happyViewController{
            if let destinationViewController = segue.destination as? happyViewController {
                destinationViewController.firstName = textField.text ?? ""
            }
        }
    }
    
    @IBAction func unwindWellcome(_ unwindSegue : UIStoryboardSegue) {
    }
    
}
