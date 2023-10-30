//
//  ViewController.swift
//  tababr
//
//  Created by Sonoma on 27/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        designTab()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .darkContent
    }
    
    func designTab(){
        tabView.layer.cornerRadius = tabView.frame.height / 2
        tabView.clipsToBounds = true
    }
    
    @IBAction func onClickTabbar(_ sender: UIButton) {
        let tag = sender.tag
        print(tag)
        if tag == 1 {
            guard let home = self.storyboard?.instantiateViewController(withIdentifier: "home") as? ViewController else {return}
            contentView.addSubview(home.view)
            home.didMove(toParent: self)
            
        }
        else if tag == 2{
            guard let camera = self.storyboard?.instantiateViewController(withIdentifier: "CameraViewController") as? CameraViewController else {return}
            contentView.addSubview(camera.view)
            camera.didMove(toParent: self)
        }
        else if tag == 3 {
            guard let search = self.storyboard?.instantiateViewController(withIdentifier: "SearchViewController") as? SearchViewController else {return}
            contentView.addSubview(search.view)
            search.didMove(toParent: self)
        }
        else{
            guard let person = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController else {return}
            contentView.addSubview(person.view)
            person.didMove(toParent: self)
        }
    }
    
    
}

