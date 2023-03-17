//
//  ViewController.swift
//  Table_View
//
//  Created by R86 on 07/02/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var arr = [["Connections","Connected devices"],
               ["Modes and Routines","Sounds and vibration ","Notification"],
               ["Display","Wallpaper nad style","Themes","Home screen","Lock screen","Safety and emergency"],
               ["Accounts and backup","Google"],
               ["Advanced features"],
               ["Didital Wellbeing and parental controls","Battery and device care","Apps"],
               ["General managment","Accessibility"],
               ["software update","User manual","Remote support","About phone","Developer options"]]
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.backgroundColor = .systemGray6
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = UITableViewCell()
        cell.textLabel?.text = arr[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return " "
    }
    
}

