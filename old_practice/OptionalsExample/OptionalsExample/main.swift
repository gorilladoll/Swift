//
//  main.swift
//  OptionalsExample
//
//  Created by 조진규 on 2017. 1. 3..
//  Copyright © 2017년 조진규. All rights reserved.
//

import Foundation

//var errString:String = nil;

var aString : String? = "This is a test.";
aString = nil;
//?의 사용 이유는 nil값을 집어넣을 수 있게 하기 위함


var strNum = "1234";
var num:Int? = Int(strNum);
//Int형 이지만 nil값이 들어갈 수 있도록 하기 위해 ? 를 사용

if (num != nil){
    num! = num! + 1;
    //!의 사용 이유는 정상적인 값 이라는 것을 표현하기 위해서 사용하는 것
    print("\(num!)은 숫자입니다.");
} else {
    print("\(strNum)은 숫자가 아닙니다.");
}
