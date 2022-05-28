//
//  ViewController.swift
//  SwiftAndFlutterStudy
//
//  Created by Zhf on 2022/5/24.
//

import UIKit
import Flutter
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.brown
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //搜索到了很多中获取控制器跳转的方法，感觉这种获取 控制器跳转最为流畅 （自我感觉）
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(flutterViewController, animated: true)
    }
}

