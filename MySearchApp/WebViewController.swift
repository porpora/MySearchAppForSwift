//
//  WebViewController.swift
//  MySearchApp
//
//  Created by 宮内諒太 on 2018/07/09.
//  Copyright © 2018年 宮内諒太. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var itemUrl: String?
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webView.customUserAgent =
        "Mozilla/5.0 (iphone; CPU iPhone OS 11_9 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 safari/604.1"
        guard let itemUrl = itemUrl else {
            return
        }
        guard let url = URL(string: itemUrl) else {
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
