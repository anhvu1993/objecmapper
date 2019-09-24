

//
//  TableViewController.swift
//  AlamofileMappble
//
//  Created by Boss on 9/23/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController
{
    
    var detaildata = [LstMenuSales]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDetailDataAll()
        
    }
    
    func getDetailDataAll(){
        DataServicegetDataDetail.sharedInstance.getdataDetail(callBack: { (response) in
            response.lstMenuSales?.forEach({ (data) in
                self.detaildata.append(data)
            })
            self.tableView.reloadData()
        }) { (error) in
            print(error)
        }
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if detaildata == nil {
            return 0
        } else {
            return detaildata.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else {return UITableViewCell()}
        cell.idLable.text = detaildata[indexPath.row].id
        cell.nameLabel.text = detaildata[indexPath.row].name
        cell.iconLabel.text = detaildata[indexPath.row].icon
        return cell
    }
    
    
    
}
