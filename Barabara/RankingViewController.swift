//
//  RankingViewController.swift
//  Barabara
//
//  Created by Yukiyo Suenaga on 2023/05/12.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var rankingLabel1: UILabel!
    @IBOutlet var rankingLabel2: UILabel!
    @IBOutlet var rankingLabel3: UILabel!
    
    //スコアを保存するための変数
    let saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //"score1"というkeyの値を取得して表示
        rankingLabel1.text = String(saveData.integer(forKey: "score1"))
        //"score2"というkeyの値を取得して表示
        rankingLabel2.text = String(saveData.integer(forKey: "score2"))
        //"score3"というkeyの値を取得して表示
        rankingLabel3.text = String(saveData.integer(forKey: "score3"))
    }
    
    @IBAction func toTop(){
        self.dismiss(animated: true, completion: nil)
        // Do any additional setup after loading the view.
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
