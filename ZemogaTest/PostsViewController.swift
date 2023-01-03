//
//  ViewController.swift
//  ZemogaTest
//
//  Created by Nicolas Cadena Jaramillo on 2/01/23.
//

import UIKit

class PostsViewController: UIViewController {
    
    //Outlets:
    @IBOutlet weak var postTable: UITableView!
    
    let data = ["title1","title2","title3","title4","title5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postTable.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension PostsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let postCell = postTable.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
        postCell.titleLabel.text = data[indexPath.row]
        return postCell
    }
    
    
}

