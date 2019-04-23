//
//  ViewController.swift
//  htc-week-5
//
//  Created by maxim mironov on 23/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
//        TableView.translatesAutoresizingMaskIntoConstraints = true
//        TableView.topAnchor.constraint(equalTo:   view.topAnchor).isActive = true
//        TableView.leftAnchor.constraint(equalTo:  view.leftAnchor).isActive = true
//        TableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        TableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        
        Data.readTrips(completion: {  [unowned self] in
            self.TableView.reloadData()
        })
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.groupModel[section].data?.count ?? 0
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let model = Data.groupModel[section]
        let cell = tableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.identifier) as! HeaderTableViewCell
        cell.setup(tittle: model.title)
        return cell.contentView
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = Data.groupModel[indexPath.section].data?[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier) as! TableViewCell
        cell.setup(lableText: model?.tittle ?? "")
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return  Data.groupModel.count ?? 0
    }
    
    
}
