//
//  main.swift
//  StudentExample
//
//  Created by 조진규 on 2017. 1. 3..
//  Copyright © 2017년 조진규. All rights reserved.
//

import Foundation

class Student : NSObject{
    var kor : Int;
    var eng : Int;
    var math : Int;
    
    init(kor:Int,eng:Int,math:Int){
        self.kor = kor;
        self.eng = eng;
        self.math = math;
        
        super.init();
    }
    
    convenience override init(){
        self.init(kor:0,eng:0,math:0);
    }
}

let student = Student();
student.kor = 85;
student.eng = 94;
student.math = 80;

print("국어 : \(student.kor)");
print("영어 : \(student.eng)");
print("수학 : \(student.math)");

