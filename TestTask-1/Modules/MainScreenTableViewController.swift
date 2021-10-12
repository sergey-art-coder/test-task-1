//
//  MainScreenTableViewController.swift
//  TestTask-1
//
//  Created by Сергей Ляшенко on 12.10.2021.
//

import UIKit

class MainScreenTableViewController: UITableViewController {
    
    @IBOutlet weak var userLabel: UILabel!
    
    private var photo = #imageLiteral(resourceName: "Image")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let session = Session.shared
        userLabel.text = session.user
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? MainTableViewCell else { return UITableViewCell() }
        
        cell.photoImageView.image = photo
        return cell
    }
}
