//
//  ChallengesViewController.swift
//  Enironment App
//
//  Created by Girls Who Code on 7/17/19.
//  Copyright © 2019 Girls Who Code. All rights reserved.
//

import UIKit

class ChallengesViewController: UIViewController {
    

    @IBOutlet weak var uncheckbox: UIButton!
    
    var checkBox = UIImage(named: "red")
    var uncheckBox = UIImage(named: "white")
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    @IBAction func ClickBox(_ sender: UIButton) {
        let button = sender as! UIButton
        let isChecked = Profile(context: context)
        
        if button.isSelected{
            button.setImage(uncheckBox, for: UIControl.State.normal)
            button.isSelected = false
        }
        else{
            button.setImage(checkBox, for: UIControl.State.normal)
            button.isSelected = true
        }
        isChecked.isChecked = button.isSelected
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
