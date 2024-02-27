//
//  QuizManager.swift
//  Quiz
//
//  Created by spark-03 on 2023/12/28.
//

import UIKit

class QuizManager {
    var quizzess: [Quiz]
    var currnetIndex: Int
    var score: Int
    
    enum Status {
        case inAnswer
        case done
    }
    var status: Status
    
    init() {
        quizzess = []
        //問題文、正解、画像名　でクイズを作成
        quizzess.append(Quiz(text: "人間を超でっかいネコだと思っている？", correctAnswer: true, imageName: "cat"))
        quizzess.append(Quiz(text: "イヌは食べ物の美味しさを味よりも匂いで判断している?", correctAnswer: true, imageName: "dog"))
        quizzess.append(Quiz(text: "トラのしましま模様は皮膚まで繋がっていない?", correctAnswer: true, imageName: "tiger"))
        quizzess.append(Quiz(text: "クマは走る時に全部の足がバラバラに動いている?", correctAnswer: true, imageName:"bear"))
        quizzess.append(Quiz(text: "パンダのいちばんの好物は笹である?", correctAnswer: true, imageName: "panda"))
        quizzess.append(Quiz(text: "吾輩はネコであるのネコは三毛猫である？", correctAnswer: true, imageName: "neko"))
        quizzess.append(Quiz(text: "吾輩はネコであるのネコは三毛猫である？", correctAnswer: true, imageName: "neko"))
        
        currnetIndex = 0
        score = 0  //初期値はゼロとしている
        status = .inAnswer  //回答中
    }
    
    var currentQuiz: Quiz {
        get {
            return self.quizzess[currnetIndex]
        }
    }
    
    func answerQuiz(answer:Bool) {
        if self.currentQuiz.correctAnswer == answer {
            score += 1
        }
    }
    
    func nextQuiz() {
        if currnetIndex < quizzess.count - 1 {
            currnetIndex += 1
        } else {
            status = .done
        }
    }
    
}



