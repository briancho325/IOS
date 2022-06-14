//
//  ViewController.swift
//  SwiftUIClass
//
//  Created by Schro on 2022/06/01.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var category1: UISegmentedControl!
    @IBOutlet weak var category2: UISegmentedControl!
    @IBOutlet weak var category3: UISegmentedControl!
    @IBOutlet weak var recommendResult: UILabel!
    
    var selectedIndex1: Int!
    var selectedIndex2: Int!
    var selectedIndex3: Int!
    var foodList: [Food]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex1 = category1.selectedSegmentIndex
        selectedIndex2 = category1.selectedSegmentIndex
        selectedIndex3 = category1.selectedSegmentIndex
        foodList = [
            Food("국밥", 1, 1, 1),
            Food("비빔밥", 1, 1, 1),
            Food("닭갈비", 1, 1, 2),
            Food("돼지불백", 1, 1, 2),
            Food("스시", 1, 2, 1),
            Food("소바", 1, 2, 1),
            Food("밀푀유나베", 1, 2, 2),
            Food("사케동", 1, 2, 2),
            Food("짜장면", 1, 3, 1),
            Food("마파두부덮밥", 1, 3, 1),
            Food("마라탕", 1, 3, 2),
            Food("중식볶음밥", 1, 3, 2),
            Food("샌드위치", 1, 4, 1),
            Food("햄버거", 1, 4, 1),
            Food("스테이크", 1, 4, 2),
            Food("피자", 1, 4, 2),
            Food("김밥", 2, 1, 1),
            Food("순대", 2, 1, 1),
            Food("도토리묵", 2, 1, 2),
            Food("닭꼬치", 2, 1, 2),
            Food("타코야끼", 2, 2, 1),
            Food("센베이", 2, 2, 1),
            Food("교자", 2, 2, 2),
            Food("오코노미야끼", 2, 2, 2),
            Food("만두", 2, 3, 1),
            Food("탕과", 2, 3, 1),
            Food("딤섬", 2, 3, 2),
            Food("핫도그", 2, 4, 1),
            Food("애플파이", 2, 4, 1),
            Food("소세지", 2, 4, 2)
        ]
    }
    @IBAction func recommendButtonClick(_ sender: Any) {
        var recommendList: [String] = []

        for food in foodList{
            var flag: Bool = true
            let amountIndex = category1.selectedSegmentIndex
            let countryIndex = category2.selectedSegmentIndex
            let personIndex = category3.selectedSegmentIndex
            if amountIndex != 0 && food.amount != amountIndex || countryIndex != 0 && food.country != countryIndex || personIndex != 0 && food.person != personIndex{
                flag = false
            }
            if flag{
                recommendList.append(food.name)
            }
        }
        recommendResult.text = recommendList[Int.random(in: 0..<recommendList.count)]
    }
    @IBAction func category1Changed(_ sender: Any) {
        selectedIndex1 = category1.selectedSegmentIndex
    }
    @IBAction func category2Changed(_ sender: Any) {
        selectedIndex2 = category2.selectedSegmentIndex
    }
    @IBAction func category3Changed(_ sender: Any) {
        selectedIndex3 = category3.selectedSegmentIndex
    }
    

}

