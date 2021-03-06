//
//  HomeViewController.swift
//  Bespoke Digital Media learning
//
//  Created by Anubhav Singh on 29/04/20.
//  Copyright © 2020 Bespoke Digital Media. All rights reserved.
//

import UIKit
import SideMenu


class HomeViewController: UIViewController {
    
    @IBOutlet weak var NavigaitonBar: UINavigationItem!
    @IBOutlet weak var AssignmentGif: UIImageView!
    @IBOutlet weak var FeeGif: UIImageView!
    @IBOutlet weak var AttendanceGif: UIImageView!
    @IBOutlet weak var performanceGif: UIImageView!
    @IBOutlet weak var timeTableGif: UIImageView!
    
    var menu: SideMenuNavigationController?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding Gif files
        AssignmentGif.loadGif(name: "assignment")
        FeeGif.loadGif(name: "feesvect")
        AttendanceGif.loadGif(name: "timetable")
        performanceGif.loadGif(name: "performance")
        timeTableGif.loadGif(name: "attendance")
        
        // Navigaton bar attributes
        navigationController?.navigationBar.barTintColor = UIColor(red: 43/255.0, green: 188/255.0, blue: 184/255.0, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.title = "Welcome Student 1"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Arial Rounded MT Bold", size: 20.0)!, NSAttributedString.Key.foregroundColor: UIColor.white]
        
        // for side Menu
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        menu?.leftSide = true
        
      //  menu?.setNavigationBarHidden(true, animated: false)
        
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
    }
    
    @IBAction func didTapMenu(){
        present(menu!, animated: true)
    }

}

class MenuListController: UITableViewController{
    var item = ["profile", "Contact", "About", "Logout"]
    let darkColor = UIColor(red: 32/255.0, green: 138/255.0, blue: 144/255.0, alpha: 1)
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.backgroundColor = darkColor
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = item[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = darkColor
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // do something
    }
}
