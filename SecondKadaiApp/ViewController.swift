//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by HiroshiKitahara on 2017/09/04.
//  Copyright © 2017年 HiroshiKitahara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // prepareForSegueと同じ?
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // ここでas!を入れている理由
        // segue.destinationというメソッドの動きがわからない segue側にviewControllerの登録？
        // => 使用しているViewControllerの独自のメソッドにアクセスするためにswift側に通知するため
        // 結果segueに対して表示するViewControllerのobjectを渡すため?
        // as!を使用しているのはswiftのルールっぽい
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.name = name.text!
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue){
    }
}
