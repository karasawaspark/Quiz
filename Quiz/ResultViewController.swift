//
//  ResultViewController.swift
//  Quiz
//
//  Created by spark-03 on 2024/01/05.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var nameText: String = ""
    var score: Int = 0
    
    var countQuizzes = QuizManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        let countAllQuizzes = countQuizzes.quizzess.count
        // Do any additional setup after loading the view.
        
        self.label.text = "\(self.nameText)さん　あなたのスコアは\(self.score)です。"
        
        var text = ""
        switch self.score {
        case 0:
            text = "動物への関心が感じられません。がんばりましょう"
        case 1,2:
            text = "動物に関してあまり興味はないでしょうか?\n\nもっと頑張りましょう！"
        case 3...4:
            text = "動物にはかなり詳しい方ですね！\n\nもう少しです！"
        case 5..<countAllQuizzes:
            text = "あと一歩です"
        case countAllQuizzes :
            text = "全問正解です!\n\nおめでとうございます！"
        default:
            break
        }
        self.textView.text = text
    }
    
    
    
    @IBAction func pushResultButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
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
