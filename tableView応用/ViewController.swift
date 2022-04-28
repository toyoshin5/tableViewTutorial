//
//  ViewController.swift
//  tableView応用
//
//  Created by Toyoshin on 2018/08/23.
//  Copyright © 2018 Toyoshin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //必須メソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return cuteIdol.count
        case 1:
            return coolIdol.count
        case 2:
            return passionIdol.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellA", for: indexPath)
        switch indexPath.section {
        case 0:
             cell.textLabel?.text = cuteIdol[indexPath.row]//[indexPath.row]で参照可能
        case 1:
            cell.textLabel?.text = coolIdol[indexPath.row]
            
        case 2:
            cell.textLabel?.text = passionIdol[indexPath.row]
        default: break
        }
       return cell
    }

    //セクションのメソッド
    func numberOfSections(in tableView: UITableView) -> Int {
        return idolSection.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return idolSection[section]
    }
    //クリックされたとき
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //セルの選択解除(やらないと審査通らない)
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    

    
    let idolSection = ["Cute","Cool","Dance"]
    let cuteIdol = ["島村卯月","櫻井桃華","三村かな子","佐久間まゆ","一ノ瀬志希","早坂美玲","乙倉悠貴","双葉杏","緒方智絵里","前川みく"]
    
    let coolIdol = ["渋谷凛","多田李衣菜","鷺沢文香","神谷奈緒","高垣楓","橘ありす","森久保乃々","佐々木千枝"]
    
    let passionIdol = ["本田未央","堀裕子","赤城みりあ","市原仁奈","城ヶ崎莉嘉","依田芳乃","大槻唯","十時愛梨"]
    



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

