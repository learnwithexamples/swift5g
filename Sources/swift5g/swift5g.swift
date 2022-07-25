public struct swift5g {
    public private(set) var text = "Hello, World!"
    public var ts38101 = TS38101()

    let x : Int = Int(3.4)
    let c = (name: "xiaohong", 12, 90)
    public init() {
        print(x)
        3.sayHi()
        print(c.name)
        print(c.1)
        print(c.2)
        let str = "hello"
        let cvt : Int? = Int(str)
        print(cvt)
        var ab : Int? = nil
        print("before")
        print("hihi this is \(ab)!!")
        print("after")
        
        var abc : Int? = 3
        if var xxx : Int? = nil {
            print(abc!)
        }
        print(abc)
        abc = nil
        if let def = abc {
            print("I'm good")
        } else {
            print("I'm bad")
        }
        let str1 : String? = nil
        print(str1)
        print(("Blue", true) == ("Red", false))
        var astring = "this is a string"
        var idx = astring.firstIndex(of: "i") ?? astring.endIndex
        var asubstr = astring[..<idx]
        asubstr = "bb"
        print(astring)
        var aset : Set<Character> = []
        var aarray : Array<Int> = []
        aset.insert("a")
        print(aset)
        aarray.insert(3, at: 0)
        print(aarray)
        var anotherSet : Set<String> = ["abc", "abc"]
        print(anotherSet)
        var anotherSet2 : Set<String> = ["def", "abc"]
//        anotherSet
        
        class MyClas {
            var x : Int = 5
        }
        let myc = MyClas()
        let myd = myc
        myc.x = 100
        let mye = MyClas()

        print(myd === mye)
        class MyC2 {
            var x : Int?
            init(x : Int) {
                self.x = x
            }
        }
        var mc2 = MyC2(x: 3)
        print(mc2.x)
        class MyC3 : MyC2 {
//            override init(x : Int) {
//                super.init(x: x)
//            }
        }
        var my3 = MyC3(x: 4)
    }
}
