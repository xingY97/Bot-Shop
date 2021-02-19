//
//  OrderList.swift
//  Bot-Shop
//
//  Created by X Y on 2/19/21.
//

import Foundation
import UIKit

class OrderList: UIViewController {

    let orders = [Order(title: "July 2020", image: UIImage(named: "box")!),
    Order(title: "June 2020", image: UIImage(named: "box")!),
    Order(title: "May 2020", image: UIImage(named: "box")!),
    Order(title: "December 2019", image: UIImage(named: "box")!),
    Order(title: "November 2019", image: UIImage(named: "box")!),
    Order(title: "October 2019", image: UIImage(named: "box")!),
    Order(title: "September 2019", image: UIImage(named: "box")!)]

    let tableView =  UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        tableView.register(PastOrderCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        setUpTableView()
    }

    func setUpTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }

}

extension OrderList: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PastOrderCell
            cell.accessoryType = .disclosureIndicator
            cell.selectionStyle = .none
            cell.setBoxContents(box: orders[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }

}
