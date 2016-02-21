//
//  ViewController.swift
//  webrequest
//
//  Created by Christella on 2/20/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRequest(urlString: String) {
        let url = NSURL(string: urlString)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)

    }

    @IBAction func loadSwift(sender: AnyObject) {
          loadRequest("https://developer.apple.com/swift/")
    
    }

    @IBAction func loadNailPolish(sender: AnyObject) {
        loadRequest("http://www.essie.com/Colors.aspx")
    
    }

    @IBAction func loadDoughnuts(sender: AnyObject) {
        loadRequest("http://doughnutplant.com/photo/")
    
    }
}

