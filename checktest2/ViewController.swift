//
//  ViewController.swift
//  checktest2
//
//  Created by 山谷美咲生 on 2019/04/22.
//  Copyright © 2019 山谷美咲生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //文字の入った配列
    let devices: [String] = ["iphone","ipad","Apple watch"]
    
    //文字を表示するようの配列
    @IBOutlet var label: UILabel!
    
    //配列の場所を指す変数
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
        //一つ前ボタン
        @IBAction func backButton() {
            //配列の場所を指す変数が０（一番前）のとき、指す変数を一番後ろにしてあげる
            if index == 0 {
                index = 2
                
                //そうじゃない時は現在の場所から−１する
            } else {
                index = index - 1
            }
            //配列の場所を指定してラベルに表示
            label.text = devices[index]
        
        }
        
        
        //一つ次へボタン
        @IBAction func nextButton() {
            if index == 2 {
                index = 0
            } else {
                index = index + 1
            }
            label.text = devices[index]
            
            }
        @IBAction func firstButton() {
            //ラベルに配列の1番目の値を表示する
            label.text = devices[0]
            //指す場所を合わせる
            index = 0
        }
        
        @IBAction func secondButton() {
            //ラベルにはいい列の二番目の値を表示する
            label.text = devices[1]
            index = 1
        }
        
        @IBAction func thirdButton() {
            //ラベルに配列の三番目の値を表示する
            label.text = devices[2]
            index = 2
        }
        
    }




