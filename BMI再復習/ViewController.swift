//
//  ViewController.swift
//  BMI再復習
//
//  Created by spark-02 on 2024/01/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var bmiResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func bmiCheck(_ sender: Any) {
        if let height = heightText.text,
           let weight = weightText.text,
           let heightNumbar = Double(height),
           let weightNumbar = Double(weight) {
            let h = heightNumbar / 100
            let w = weightNumbar
            let result = w / ( h * h )
            let roundBmi = round(result * 10 ) / 10
            
            if roundBmi < 18.5 {
                self.bmiResultLabel.text = "あなたのBMIは\(roundBmi)です。痩せ型です。"
                self.bmiResultLabel.textColor = UIColor.black
            } else if roundBmi < 25 {
                self.bmiResultLabel.text = "あなたのBMIは\(roundBmi)です。普通型です。"
                self.bmiResultLabel.textColor = UIColor.black
            } else if roundBmi < 35 {
                self.bmiResultLabel.text = "あなたのBMIは\(roundBmi)です。やや肥満型です。"
                self.bmiResultLabel.textColor = UIColor.black
            } else {
                self.bmiResultLabel.text = "あなたのBMIは\(roundBmi)です。肥満型です。"
                self.bmiResultLabel.textColor = UIColor.black
            }
        } else {
            self.bmiResultLabel.text = "半角数値で入力してください"
            self.bmiResultLabel.textColor = UIColor.red
            
        }
        
        
        
    }
}
