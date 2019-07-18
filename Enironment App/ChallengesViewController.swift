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
   
    @IBOutlet weak var uncheckbox2: UIButton!
    
    @IBOutlet weak var uncheckbox3: UIButton!
    
    @IBOutlet weak var uncheckbox4: UIButton!
    
    @IBOutlet weak var uncheckbox5: UIButton!

    var checkBox = UIImage(named: "red")
    var uncheckBox = UIImage(named: "white")
    var total: Int = 0
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//    struct Tip {
//        let label: String
//        let description: [String]
//        let points: Int
//        let checked: Bool
//    }
    
//    var tips: [Tip] = [
//        Tip(
//            label: "Switch to LED light bulbs!",
//            description: ["Incandescent light bulbs only convert 5% of energy into light so what is the real cost of your light bulb?", "You could save $18.50/light bulb/year or more!", "You could reduce your carbon footprint by 3.66 lb CO2/light bulb/year or more!"], points: 22, checked: false),
//        Tip(
//            label: "Bring your reusable grocery bags to the store!",
//            description: ["The average family uses 1,500 bags/year.", "You could save 8 gallons of oil/year if you make the switch."], points: 8, checked: false),
//        Tip(
//            label: "Support local environment legislation by voting and informing others about its importance!",
//            description: ["Remember that we must expand our efforts to create long lasting change."], points: 15, checked: false),
//        Tip(
//                label: "Make your own coffee in a reusable mug!",
//                description: ["You could save $1,200/year and 312 plastic or styrofoam cups from being used!"], points: 20, checked: false),
//        Tip(
//                label: "Snip your 6-pack rings!",
//                description: ["If these find their way out of the trash and into the ocean, they will likely harm marine wildlife."], points: 6, checked: false),
//        Tip(
//                    label: "Ensure your home is well insulated!",
//                    description: ["Bad insulation results in high energy bills and excess CO2 emissions.", "You could save $700/year!", "You could reduce your carbon footprint by 150 lb CO2/square meter/year or more!"], points: 150, checked: false),
//        Tip(
//                    label: "Switch from one time use ziploc bags to reusable glass containers!",
//                    description: ["Plastic bags are not always necessary for food storage, and they contribute to our emissions and trash", "You could save $60/year!"], points: 35, checked: false)]
    
    
    
    @IBAction func ClickBox(_ sender: UIButton) {
        let points: Int = 25
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
        total += points
        
    }
    
    @IBAction func ClickBox2(_ sender: UIButton) {
        let points: Int = 15
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
        total += points
    }
    
    @IBAction func ClickBox3(_ sender: UIButton) {
         let points: Int = 30
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
        total += points
    }
    
    @IBAction func ClickBox4(_ sender: UIButton) {
         let points: Int = 35
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
        total += points
    }
    
    @IBAction func ClickBox5(_ sender: UIButton) {
         let points: Int = 6
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
        total += points
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(total)

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
