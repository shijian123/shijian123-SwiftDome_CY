//
//  CYRootController.swift
//  swiftDemo_CY
//
//  Created by zcy on 2020/8/3.
//

import UIKit

class CYRootController: CYBaseController, UITableViewDelegate, UITableViewDataSource {
    
    var myTableView: UITableView?
    var titleArr = ["LinkMetadata", "PresentVC"]
    var dataArr = ["CYLinkMetadataController", "CYPresentController"]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "rootController"
        // Do any additional setup after loading the view.
        myTableView = UITableView(frame: view.bounds, style: .plain)
        myTableView?.delegate = self
        myTableView?.dataSource = self
        view.addSubview(myTableView!)
        myTableView?.register(UITableViewCell.self, forCellReuseIdentifier: "CELLID")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELLID")
//        cell?.textLabel?.text = "row:\(indexPath.row)"
        cell?.textLabel?.text = titleArr[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    
        let clsName = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String//这是获取项目的名称，
        let className = clsName! + "." + dataArr[indexPath.row]
        let viewClass = NSClassFromString(className) as! UIViewController.Type
        
        //这里需要指定类的类型XX.Type
        let viewController = viewClass.init()
        if indexPath.row == 1 {
            viewController.modalPresentationStyle = .overCurrentContext
            self.present(viewController, animated: true, completion: nil)
        }else {
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        
        
    }
}
