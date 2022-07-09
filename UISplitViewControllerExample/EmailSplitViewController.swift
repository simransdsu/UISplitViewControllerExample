//
//  EmailSplitViewController.swift
//  UISplitViewControllerExample
//
//  Created by Simran Preet Singh Narang on 2022-07-08.
//

import UIKit

class EmailSplitViewController: UISplitViewController, MasterViewControllerDelegate, UISplitViewControllerDelegate {
    
    private var values: [String] = ["Email 1", "Email 2", "Email 3", "Email 4", "Email 5"]
    
    
    private var primaryViewController: MasterViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadViewControllers()
        self.primaryViewController.show(values: values)
        self.delegate = self
    }
    
    func didSelectValue(_ value: String) {
        let vc = DetailViewController()
        vc.showValue(value)
        self.showDetailViewController(vc, sender: nil)
    }
    
    private func loadViewControllers() {
        self.primaryViewController = MasterViewController()
        self.primaryViewController.delegate = self
        let navController = UINavigationController(rootViewController: self.primaryViewController)
        let detail = DetailViewController()
        detail.showValue(values.first!)
        self.viewControllers = [navController, detail]
    }
    
    
    func splitViewController(_ splitViewController: UISplitViewController,
                             collapseSecondary secondaryViewController: UIViewController,
                             onto primaryViewController: UIViewController) -> Bool {
        
        return true
    }
}
