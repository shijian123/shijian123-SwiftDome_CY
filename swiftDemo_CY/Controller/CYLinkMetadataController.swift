//
//  CYLinkMetadataController.swift
//  swiftDemo_CY
//
//  Created by zcy on 2020/8/3.
//  Copyright © 2020 CY. All rights reserved.
//

import UIKit
import LinkPresentation

class CYLinkMetadataController: CYBaseController {

    let metadataProvider = LPMetadataProvider()
    let url = URL(string: "https://www.baidu.com")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let metadata = LPLinkMetadata()
        metadata.originalURL = url
        metadata.title = "click百度"
        let path = Bundle.main.path(forResource: "beauty1", ofType: "jpg")
        metadata.imageProvider = NSItemProvider(contentsOf: URL(fileURLWithPath: path ?? ""))
        let linkView = LPLinkView(metadata: metadata)
        linkView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        self.view.addSubview(linkView)
        
//        let webView = WKWebView()

        /**
         对于函数,类,协议等,可以使用@available 声明这些类型的生命周期依赖于特定的平台和操作系统版本。而#available 用在判断语句中(if, guard, while等),在不同的平台上做不同的逻辑。
         */
//        @available(iOS 13.0, *)
//        if #available(iOS 13.0, *)
        
        
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
