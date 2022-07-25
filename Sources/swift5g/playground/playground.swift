import Darwin
extension Int {
    func sayHi() {
        print("Int says hi \(self)")
    }
}
public struct playground {
    public init() {
        func greet(_ person: String, day: String) -> (String, Int) {
            7.sayHi()
            return ("Hello \(person), today is \(day).", 3)
        }
        let res = greet("Xiaohong", day: "Nihao")
        print("hi \(res.0), \(res.1)")
        print("Hello world")
        let mycons : Int
        mycons = 5
        var myvar : Double = 3.14
        myvar = myvar + 1;
        print(mycons)
        print(myvar)
        print(Double(mycons) + myvar)
        let quotation = """
sdfsf
sdfsf
            fsfsdf
9034otijf
"""
        print(quotation)
        let myarr = [1, 2, 3, 4.5]
        print(myarr[0])
        let mymixed : [Any] = ["hi", 4]
        print(mymixed[1])
        let myDict : [String : Int] = ["xiaohong" : 1, "xiaoming" : 2]
        print(myDict["xiaoming"])
        var myDict2 : [Int : String] = [:]
        myDict2[2] = "This"
        print(myDict2[2])
        
        var optionalName: String? = "xiaohong"
        var greeting = "Hello"
        if let name = optionalName {
            greeting = "Hello, \(name)"
        } else {
            greeting = "I don't know you"
        }
        print(greeting)
        print("Hihi \(optionalName ?? "this is me")")
        
        let vegetable = "celerypepper"
        switch vegetable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumber", "watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
        let dict3 = [1 : [1, 2, 3], 2 : [2, 3, 4], 3 : [3, 4, 5]]
        for (key, val) in dict3 {
            print(key)
            print(val)
        }
        var x = 0;
        repeat {
            print(x)
            x = x + 1
        } while (x < 0)

        for i in 0...3 {
            print(i)
        }
        func buildAFunction() -> ((Int) -> Int) {
            func twoTimes(x : Int) -> Int {
                return 2 * x;
            }
            return twoTimes;
        }
        let aFunc = buildAFunction()
        print(aFunc(12))
        func doSomething(x : Int, _ afunc : (Int) -> Int) -> Int {
            return afunc(x);
        }
        print(doSomething(x : 6, aFunc))
        print(doSomething(x: 13, {(x : Int) -> Int in
            let cons = 4
            return cons * x
        }))
        print(doSomething(x: 13, {a in 5 * a}))
        
        let numbers = [4, 5, 1, 3, 9]
//        let sortedNumbers = numbers.sorted { $0 > $1 }
        func comp(_ x : Int, _ y : Int) -> Bool {
            return x > y
        }
//        func comp2(_ : Int, _ : Int) -> Bool {
//            return $0 > $1
//        }
        let sortedNumbers = numbers.sorted(by : {
            return $0 > $1
        })
        print(sortedNumbers)
        
        class myC {
            var birthYear : Int
            var age : Int {
                get {
                    return 32
                }
                set {
                    print("setter called")
                    birthYear = 2022 - newValue
                }
            }
            var age2 : Int {
                willSet {
                    age = 9
                    print("age is set to 9")
                }
                didSet {
                    print("age is set to 11")
                    age = 11
                }
            }
            init(_ birthYear : Int) {
                self.birthYear = birthYear
                age2 = 0
            }
        }
        var myc = myC(10)
        print(myc.age)
        myc.age = 10
        print(myc.birthYear)
        myc.age2 = 6
     }
}
