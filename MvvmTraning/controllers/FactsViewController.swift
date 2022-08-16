//
//  MvvmTraning
//
//  Created by mobin on 8/7/22.
//

import UIKit

class FactsViewController: UIViewController, UITableViewDataSource , UITableViewDelegate  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "cell number is \(indexPath.row + 1)"
        return cell
    }
    

    lazy var facts_tableView : UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView 
        
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(facts_tableView)
        facts_tableView.translatesAutoresizingMaskIntoConstraints = false
        facts_tableView.widthAnchor.constraint(equalTo: view
                                                .widthAnchor).isActive = true
        facts_tableView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        
        

        

    }


}


