//
//  main.swift
//  StudentPointExample
//
//  Created by 조진규 on 2017. 1. 3..
//  Copyright © 2017년 조진규. All rights reserved.
//

import Foundation

class Student : NSObject{
    var kor : Int = 0;
    var eng : Int = 0;
    var math : Int = 0;
    
    func setPoint(kor:Int,eng:Int,math:Int){
        self.kor = kor;
        self.eng = eng;
        self.math = math;
    }
    
    func getTotal()->Int{
        return self.kor + self.eng + self.math;
    }
    
    func getAverage()->Float{
        return Float(self.kor + self.eng + self.math) / 3;
    }
}

let stuPoint = Student();
stuPoint.setPoint(kor: 80,eng: 80,math: 80);
print("영어 : \(stuPoint.eng)");
print("수학 : \(stuPoint.math)");
print("국어 : \(stuPoint.kor)");
print("합계 : \(stuPoint.getTotal())");
print("평균 : \(stuPoint.getAverage())");



