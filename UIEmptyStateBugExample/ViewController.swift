//
//  ViewController.swift
//  UIEmptyStateBugExample
//
//  Created by OSTEEN, JOSHUA R [AG-Contractor/1000] on 7/10/18.
//  Copyright © 2018 oriyentel. All rights reserved.
//

import UIKit
import UIEmptyState

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emptyStateDataSource = self
        self.emptyStateDelegate = self
        
        tableView.tableFooterView = UIView()
        
        reloadEmptyStateForTableView(tableView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension ViewController: UIEmptyStateDataSource, UIEmptyStateDelegate {
    var emptyStateTitle: NSAttributedString {
        return NSAttributedString(string: "I SHOULD BE CENTERED IN THE TABLE VIEW!!!")
    }
    var emptyStateButtonImage: UIImage? {
        return UIImage(named: "test")
    }
}
