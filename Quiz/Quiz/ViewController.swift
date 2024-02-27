//
//  ViewController.swift
//  Quiz
//
//  Created by spark-03 on 2023/12/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //インスタンス作成
        let quizManager = QuizManager()
        //最初のクイズの問題文を確認
//        print(quizManager.currentQuiz.text)
        //クイズに◯回答する
        quizManager.answerQuiz(answer:  true)
        //スコアを確認
        print(quizManager.score)
        //次のクイズを取得
        quizManager.nextQuiz()
        //次のクイズの問題文を確認
        print(quizManager.currentQuiz.text)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let quizViewController =//値が入っていた場合は
            segue.destination as? QuizViewController {//セグエの行き先はQuizViewController型になっていますか？
            if let text = self.nameTextField.text {//テキストフィールドに文字があったらネームテキストフィールドを
                quizViewController.nameText = text//クイズビューコントローラー
            }
        }
    }
    
    @IBAction func puressButton(_ sender: Any) {
    }
}
