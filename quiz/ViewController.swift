//
//  ViewController.swift
//  quiz
//
//  Created by YaHan on 2024/5/6.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleNumberLabel: UILabel!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var answerResultLabel: UILabel!
    @IBOutlet weak var optionOneLabel: UIButton!
    @IBOutlet weak var optionTwoLabel: UIButton!
    @IBOutlet weak var optionThreeLabel: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    
    var questions = [MultipleChoiceQuestion]()
    var currentQuestions = [MultipleChoiceQuestion]()
    var index = 0
    var score = 0
    var answer = ""
    
    func initQuestions() {
        let question1 = MultipleChoiceQuestion(questionText: "世界上最高的山峰是？", option1: "珠穆朗玛峰", option2: "喜馬拉雅山", option3: "阿尔卑斯山", correctAnswerText: "珠穆朗玛峰")
        questions.append(question1)
        let question2 = MultipleChoiceQuestion(questionText: "哪個大陸擁有最多的國家？", option1: "亞洲", option2: "歐洲", option3: "非洲", correctAnswerText: "亞洲")
        questions.append(question2)
        let question3 = MultipleChoiceQuestion(questionText: "以下哪個城市是法國的首都？", option1: "巴黎", option2: "柏林", option3: "倫敦", correctAnswerText: "巴黎")
        questions.append(question3)
        let question4 = MultipleChoiceQuestion(questionText: "世界上最大的沙漠是？", option1: "非洲撒哈拉沙漠", option2: "澳大利亞大沙漠", option3: "南極冰川", correctAnswerText: "非洲撒哈拉沙漠")
        questions.append(question4)
        let question5 = MultipleChoiceQuestion(questionText: "以下哪個城市是美國的首都？", option1: "紐約", option2: "華盛頓特區", option3: "洛杉磯", correctAnswerText: "華盛頓特區")
        questions.append(question5)
        let question6 = MultipleChoiceQuestion(questionText: "非洲最長的河流是？", option1: "尼羅河", option2: "亞馬遜河", option3: "库尼奥河", correctAnswerText: "尼羅河")
        questions.append(question6)
        let question7 = MultipleChoiceQuestion(questionText: "世界上最大的湖泊是？", option1: "里海", option2: "五大湖", option3: "貝加爾湖", correctAnswerText: "貝加爾湖")
        questions.append(question7)
        let question8 = MultipleChoiceQuestion(questionText: "哪個國家擁有最多的人口？", option1: "印度", option2: "中國", option3: "美國", correctAnswerText: "中國")
        questions.append(question8)
        let question9 = MultipleChoiceQuestion(questionText: "北極位於以下哪個洲？", option1: "歐洲", option2: "南極", option3: "北美洲", correctAnswerText: "北美洲")
        questions.append(question9)
        let question10 = MultipleChoiceQuestion(questionText: "世界上最熱的沙漠是？", option1: "撒哈拉沙漠", option2: "萊茵沙漠", option3: "阿拉伯沙漠", correctAnswerText: "撒哈拉沙漠")
        questions.append(question10)
        let question11 = MultipleChoiceQuestion(questionText: "哪個城市被稱為東方之珠？", option1: "東京", option2: "上海", option3: "香港", correctAnswerText: "香港")
        questions.append(question11)
        let question12 = MultipleChoiceQuestion(questionText: "哪個國家擁有最多的島嶼？", option1: "菲律賓", option2: "日本", option3: "印尼", correctAnswerText: "印尼")
        questions.append(question12)
        let question13 = MultipleChoiceQuestion(questionText: "世界上最長的河流是？", option1: "亞馬遜河", option2: "尼羅河", option3: "長江", correctAnswerText: "尼羅河")
        questions.append(question13)
        let question14 = MultipleChoiceQuestion(questionText: "哪個國家被稱為北歐之冠？", option1: "瑞典", option2: "挪威", option3: "丹麥", correctAnswerText: "瑞典")
        questions.append(question14)
        let question15 = MultipleChoiceQuestion(questionText: "世界上最大的島嶼是？", option1: "維多利亞島", option2: "薩哈林島", option3: "格陵蘭島", correctAnswerText: "格陵蘭島")
        questions.append(question15)
        let question16 = MultipleChoiceQuestion(questionText: "以下哪個國家擁有最多的時間區？", option1: "加拿大", option2: "俄羅斯", option3: "澳大利亞", correctAnswerText: "俄羅斯")
        questions.append(question16)
        let question17 = MultipleChoiceQuestion(questionText: "哪個城市被稱為羅馬之城？", option1: "巴黎", option2: "馬德里", option3: "羅馬", correctAnswerText: "羅馬")
        questions.append(question17)
        let question18 = MultipleChoiceQuestion(questionText: "世界上最大的海是？", option1: "印度洋", option2: "太平洋", option3: "大西洋", correctAnswerText: "太平洋")
        questions.append(question18)
        let question19 = MultipleChoiceQuestion(questionText: "哪個城市是加拿大的首都？", option1: "多倫多", option2: "溫哥華", option3: "渥太華", correctAnswerText: "渥太華")
        questions.append(question19)
        let question20 = MultipleChoiceQuestion(questionText: "以下哪個城市被稱為風城？", option1: "芝加哥", option2: "雪梨", option3: "聖地牙哥", correctAnswerText: "芝加哥")
        questions.append(question20)
        let question21 = MultipleChoiceQuestion(questionText: "世界上最深的海是？", option1: "南海", option2: "里海", option3: "馬里亞納海溝", correctAnswerText: "馬里亞納海溝")
        questions.append(question21)
        let question22 = MultipleChoiceQuestion(questionText: "哪個城市被稱為天空之城？", option1: "紐約", option2: "杜拜", option3: "金邊", correctAnswerText: "杜拜")
        questions.append(question22)
        let question23 = MultipleChoiceQuestion(questionText: "世界上最大的半島是？", option1: "阿拉伯半島", option2: "斯堪的納維亞半島", option3: "印度半島", correctAnswerText: "阿拉伯半島")
        questions.append(question23)
        let question24 = MultipleChoiceQuestion(questionText: "哪個國家擁有最多的宗教聖地？", option1: "沙特阿拉伯", option2: "以色列", option3: "印度", correctAnswerText: "以色列")
        questions.append(question24)
        let question25 = MultipleChoiceQuestion(questionText: "世界上最大的峽谷是？", option1: "科羅拉多大峽谷", option2: "長江三峽", option3: "亞馬遜大峽谷", correctAnswerText: "科羅拉多大峽谷")
        questions.append(question25)
        let question26 = MultipleChoiceQuestion(questionText: "哪個城市被稱為運河之城？", option1: "威尼斯", option2: "倫敦", option3: "阿姆斯特丹", correctAnswerText: "威尼斯")
        questions.append(question26)
        let question27 = MultipleChoiceQuestion(questionText: "以下哪個國家沒有海岸線？", option1: "瑞士", option2: "奧地利", option3: "匈牙利", correctAnswerText: "瑞士")
        questions.append(question27)
        let question28 = MultipleChoiceQuestion(questionText: "世界上最大的島國是？", option1: "菲律賓", option2: "日本", option3: "印度尼西亞", correctAnswerText: "印度尼西亞")
        questions.append(question28)
        let question29 = MultipleChoiceQuestion(questionText: "哪個城市被稱為光之城？", option1: "香港", option2: "新加坡", option3: "薩爾茨堡", correctAnswerText: "新加坡")
        questions.append(question29)
        let question30 = MultipleChoiceQuestion(questionText: "世界上最長的海岸線？", option1: "加拿大", option2: "澳大利亞", option3: "挪威", correctAnswerText: "加拿大")
        questions.append(question30)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        initQuestions()
        questions.shuffle()
        titleNumberLabel.text = "第\(index+1)/10題"
        topicLabel.text = questions[index].questionText
        optionOneLabel.setTitle(questions[index].option1, for: .normal)
        optionTwoLabel.setTitle(questions[index].option2, for: .normal)
        optionThreeLabel.setTitle(questions[index].option3, for: .normal)
        scoreLabel.text = "目前得分：\(score)"

    }
    
    func next() {
        if index < 9 {
            index += 1
            titleNumberLabel.text = "第\(index+1)/10題"
            topicLabel.text = questions[index].questionText
            optionOneLabel.setTitle(questions[index].option1, for: .normal)
            optionTwoLabel.setTitle(questions[index].option2, for: .normal)
            optionThreeLabel.setTitle(questions[index].option3, for: .normal)
            
        }else {
            answerResultLabel.text = "答題已結束,可重新開始"
            scoreLabel.text = "最終得分：\(score)"
            topicLabel.text = ""
            optionOneLabel.isHidden = true
            optionTwoLabel.isHidden = true
            optionThreeLabel.isHidden = true
            
        }
        
    }
    func scoreText() {
        scoreLabel.text = "目前得分：\(score)"
        
    }
    
    
    @IBAction func choiceAnswer(_ sender: UIButton) {
        if sender.currentTitle == questions[index].correctAnswerText {
            score += 10
            scoreText()
            next()
            
        }else {
            scoreText()
            next()
            
        }
        
    }
    
    @IBAction func restart(_ sender: Any) {
        
        index = 0
        score = 0
        questions.shuffle()
        titleNumberLabel.text = "第\(index+1)/10題"
        topicLabel.text = questions[index].questionText
        optionOneLabel.setTitle(questions[index].option1, for: .normal)
        optionTwoLabel.setTitle(questions[index].option2, for: .normal)
        optionThreeLabel.setTitle(questions[index].option3, for: .normal)
        scoreLabel.text = "目前得分：\(score)"
        answerResultLabel.text = ""
        optionOneLabel.isHidden = false
        optionTwoLabel.isHidden = false
        optionThreeLabel.isHidden = false

    }
    
}    



