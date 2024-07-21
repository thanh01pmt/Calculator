//
//  Helper.swift
//  Calculator
//
//  Created by Tony Pham on 21/7/24.
//

import Foundation

/*
Struct trong Swift là một kiểu dữ liệu tự định nghĩa để nhóm các giá trị có liên quan với nhau. 
Nó là kiểu giá trị (value type).

Ví dụ đơn giản:

```swift
struct Person {
    var name: String
    var age: Int
}

let john = Person(name: "John", age: 30)
```

*/

/*
Class trong Swift là một kiểu dữ liệu tham chiếu (reference type) cho phép định nghĩa các đối tượng với thuộc tính và phương thức. Nó hỗ trợ kế thừa và có thể được khởi tạo.

Ví dụ đơn giản:

```swift
class Vehicle {
    var brand: String
    var year: Int
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
    
    func displayInfo() {
        print("Brand: \(brand), Year: \(year)")
    }
}

let car = Vehicle(brand: "Toyota", year: 2022)
car.displayInfo()
```

*/


/*
 Điểm khác biệt chính giữa Class và Struct trong Swift:

 1. Struct là kiểu giá trị (value type), còn Class là kiểu tham chiếu (reference type).
 2. Struct không hỗ trợ kế thừa, Class có thể kế thừa.
 3. Struct có initializer mặc định, Class không có.

 Ví dụ minh họa sự khác biệt:

 ```swift
 struct PointStruct {
     var x, y: Int
 }

 class PointClass {
     var x, y: Int
     init(x: Int, y: Int) {
         self.x = x
         self.y = y
     }
 }

 var structPoint1 = PointStruct(x: 1, y: 1)
 var structPoint2 = structPoint1
 structPoint2.x = 2

 print(structPoint1.x) // In ra: 1
 print(structPoint2.x) // In ra: 2

 var classPoint1 = PointClass(x: 1, y: 1)
 var classPoint2 = classPoint1
 classPoint2.x = 2

 print(classPoint1.x) // In ra: 2
 print(classPoint2.x) // In ra: 2
 ```

 Ví dụ này cho thấy khi thay đổi giá trị của một bản sao, Struct giữ nguyên giá trị gốc, trong khi Class thay đổi cả hai tham chiếu.
 */
