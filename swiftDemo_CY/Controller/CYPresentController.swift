//
//  CYPresentController.swift
//  swiftDemo_CY
//
//  Created by zcy on 2020/8/3.
//  Copyright © 2020 CY. All rights reserved.
//

import UIKit

class CYPresentController: CYBaseController {

    lazy var titleLab: UILabel = {
        let lab = UILabel()
        lab.frame = CGRect(x: 100, y: 100, width: 100, height: 20)
        view.addSubview(lab)
        lab.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(gobackTapMethod))
        lab.addGestureRecognizer(tap)
        return lab
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.titleLab.text = "测试->返回"
        
    }
    
    @objc func gobackTapMethod() {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
