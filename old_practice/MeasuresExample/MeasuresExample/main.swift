//
//  main.swift
//  MeasuresExample
//
//  Created by 조진규 on 2017. 1. 3..
//  Copyright © 2017년 조진규. All rights reserved.
//

import Foundation

class Measures{
    var millimeters : Double = 0;
    
    init(millimeters : Double){
        self.millimeters = millimeters;
    }
    //init은 생성자나 다름 없다.
    
    var centimeters : Double{
        get{
            return (millimeters / 10);
        }
        set{
            self.millimeters = (newValue * 10);
        }
        //swift에서는 get,set을 이용할 때 변수를 선언 하고 get,set 메소드를 선언한다. 
        //또한 get메소드 안에서 자기 자신을 반환할 경우 무한 루트에 빠지게 된다.
        //willSet,didSet 기능을 지원한다 사용 방법은 아래와 같다
        /*
            willSet{
               code //속성에 값이 지정되기 직전에 호출
            }
         
            didSet{
               code //속성에 값이 지정된 뒤에 호출
            }
         */
    }
    
    
    var meters : Double{
        get{
            return (centimeters / 100);
        }
        set{
            self.centimeters = (newValue * 100);
        }
    }
    
    var kilometers : Double{
        get{
            return (meters / 1000);
        }
        set{
            self.meters = (newValue * 1000);
        }
    }
}

var measures = Measures(millimeters : 40.0);
//객체의 선언 및 초기화
print("\(measures.millimeters)mm는 \(measures.centimeters)cm 입니다.");

measures.meters = 1;
//변수의 set 메소드의 사용예제
print("\(measures.centimeters)cm는 \(measures.meters)m 입니다.");
//변수의 get 메소드의 사용예제

measures.kilometers = 2;
print("\(measures.meters)m는 \(measures.kilometers)km 입니다.");

