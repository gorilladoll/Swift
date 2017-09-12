wift
練習中のSwift卒業プロジィクトが終わったらまた勉強する予定です。
12월 21일 swift

기본 데이터형
-int
-float
-double
-character
-bool
-let (상수 정의형)

변수의 명시적 선언과 암시적 선언
명시적 선언
var charVar : Character = “a”
var integerVar : Int = 50
…..

변수의 암시적 선언
var impIntVar = 60
let PI = 3.141592

print()함수
print()함수는 정수든 문자열이든 상관없이 모든 타입의 변수를 출력 가능하다. 여기서 문자열과 함께 변수를 출력하고 싶을 경우에는 변수를 \(변수) 형태로 문자열에 포함시키면 된다.

세미콜론
-기본적으로 자바스크립트처럼 세미콜론이 없더라도 한줄을 종료로 받아들이며 안써도 유효하다.

반복문
-기본적인 반복문과 문법이 같다
-do-while 반목문의 경우 repeat-while 반목문으로 문법이 변경되었다.
-while/repeat-while 문 경우에서도 마찬가지로 while(조건식) 또는 while 조건식 형태로 사용한다. 괄호를 굳이 쓰지 않아도 상관없다.
-for문의 경우 기존 문법과 같았으나 스위프트3에서부터 for in문으로 바뀌었다
-for in문 사용법 : for i in 1..<10 처럼 for 변수 in 증가시킬 수 … 증가 된 수
-for in문에서 ..<의 경우 < 와 같으며 …<의 경우 <=와 같다.
조건문
-if-else문의 문법은 같다
-switch 의 경우 case마다 break;을 줄 필요가 없다. 다음 case문을 만나게 되면 자동으로 멈추며 반드시 마지막에 default가 있어야 한다는 조건이다.




======================================

12월 26일 swift
문자열 배열

배열의 선언
1. var wishList = [“robot” , ”doll” , ”money”]; 일반적인 c 언어와 같은 배열 선언
2. var wishList:String = [] 마찬가지로 C언어와 같은 선언
*Swift의 배열은 C와는 다른 collection 개념을 이용한다

배열의 삽입
1. wishList += [“radio”]; 일반적인 +=연산자를 이용하여서 삽입이 가능하다
2. wishList.append(“radio”); .append 메소드를 체이닝 하여 삽입이 가능하다.
3. wishList.insert(“chocolate”,at:1) .insert 메소드를 이용하여 원하는 위치에 원하는 값을 삽입할 수 있다.

배열의 삭제
1. wishList.removeLast(); wishList 배열의 가장 마지막에 삽입된 자료를 삭제한다.
2. wishList.remove(at:1) wishList 배열에서 두번째에 자리한 자료를 삭제한다.

———————————————————————————————————

숫자형 배열

숫자형 배열의 선언
1. var dataInt = [Int]();
2. var dataFloat = [Float]();

숫자형 배열의 삽입
dataInt.append(1);

숫자형 배열의 초기화 및 자료 수 지정
dataFloat = [Float](repeating : 0.0 , count : 10);


———————————————————————————————————

연관 배열

연관배열의 선언 및 정의
var engkordic : [String:String] = [“computer” : “컴퓨터” , “newspaper” : “신문”];

연관배열의 값 만을 출력
let word = engkordic[“computer”]!;
print(“conputer는 \(word)라는 뜻입니다.”);
* !를 꼭 붙여야만 연관배열의 값 만을 출력한다

연관배열의 값 삽입
enckordic[“present”] = “선물”;

연관배열의 값 변경
enckordic[“present”] = “현재”;

연관배열 값 삭제
encordic[“present”] = nil;


———————————————————————————————————



