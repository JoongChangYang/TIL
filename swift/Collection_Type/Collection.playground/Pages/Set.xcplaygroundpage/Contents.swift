//: [Previous](@previous)
/*:
 ## Set
 - Unordered Collection
 - Unique Value
 - Set Literal = Array Literal
 */
// 배열 / 딕셔너리에 비해 중요도 ↓


//let fruitsArr = ["Apple", "Orange", "Melon"]
//let numbersArr = [1, 2, 3, 3, 3]
//let emptyArr = [String]()


let fruitsSet: Set<String> = ["Apple", "Orange", "Melon"]
let numbers: Set = [1, 2, 3, 3, 3]
let emptySet = Set<String>()
numbers.contains(1)

/*:
 ### Number of Elements
 */
fruitsSet.count

if !fruitsSet.isEmpty {
  print("\(fruitsSet.count) element(s)")
} else {
  print("empty set")
}

/*:
 ### Searching
 */
print("\n---------- [ Searching ] ----------\n")



let x: Set = [1, 2, 3, 4, 5]
let y: Set = [1, 2, 3, 4, 5]
x
y

//fruitsSet[0]    // 순서 X -> Index X
x.first   // O


if fruitsSet.contains("Apple") {
  print("Contains Apple")
}

let productSet: Set = ["iPhone", "iPad", "Mac Pro", "iPad Pro", "Macbook Pro"]
for element in productSet {
  if element.hasPrefix("i") { //"i"가 포함된 element들을 반환 함
    print(element)
  }
}


/*:
 ### Add a New Element
 */
print("\n---------- [ Add ] ----------\n")

//[1,2,3].append(1)
//[1,2,3].insert(2, at: 0)

var stringSet: Set<String> = []
stringSet.insert("Apple")
stringSet

stringSet.insert("Orange")
stringSet

let reBool = stringSet.insert("Orange") // 추가하고 Bool타입 반환
print(reBool)
stringSet


/*:
 ### Remove an Element
 */
print("\n---------- [ Remove ] ----------\n")

stringSet = ["Apple", "Orange", "Melon"]

stringSet.remove("Apple") // 값으로 지워주고 가지고있던 값을 반환한다

if let removed = stringSet.remove("Orange") {
  print("\(removed) has been removed!")
}

stringSet

stringSet.removeAll()


/*:
 ### Compare two sets
 */
print("\n---------- [ Compare ] ----------\n")

var favoriteFruits = Set(["Apple", "Orange", "Melon"])
var tropicalFruits = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])

if favoriteFruits == tropicalFruits {
  print("favoriteFruits == tropicalFruits")
} else {
  print("favoriteFruits != tropicalFruits")
}


var favoriteFruits1 = Set(["Orange", "Melon", "Apple"])
var favoriteFruits2 = Set(["Apple", "Melon", "Orange"])

favoriteFruits1 == favoriteFruits2 // 값들이 동일 하기 때문에 true 반환
favoriteFruits1.elementsEqual(favoriteFruits2) // elementsEqual -> 값들의 순서도 같아야함



// 포함 관계 여부. 상위/하위 집합.
// group1 ⊇ group2
let group1: Set = ["A", "B", "C"]
let group2: Set = ["A", "B"]

// superset
group1.isSuperset(of: group2) //상위 집합인지 확인 (동일해도 true 반환)
group1.isStrictSuperset(of: group2)
// strictSuperset - 자기 요소 외 추가 요소가 최소 하나 이상 존재해야 함
group1.isStrictSuperset(of: group1)

// subset
group2.isSubset(of: group1)
group2.isStrictSubset(of: group1)
group2.isStrictSubset(of: group2)


/*:
 ---
 ## Fundamental Set Operations
 - intersection - 교집합
 - symmetricDifference - 교집합의 여집합
 - union - 합집합
 - subtracting - 차집합
 ---
 */

//: ![Set](FundamentalSetOperations.png)



/*:
 ### intersection
 */
print("\n---------- [ intersection ] ----------\n")


favoriteFruits = Set(["Apple", "Orange", "Melon", "Kiwi"])
tropicalFruits = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])

// isDisjoint - 공집합일 경우 true 반환
if favoriteFruits.isDisjoint(with: tropicalFruits) {
  print("favoriteFruits ∩ tropicalFruits = ∅")
} else {
  print("favoriteFruits ∩ tropicalFruits")
}

// 교집합에 해당하는 요소를 반환
let commonSet = favoriteFruits.intersection(tropicalFruits)
commonSet

// 교집합에 해당하는 요소만 남기고 나머지 제거
tropicalFruits.formIntersection(favoriteFruits)
tropicalFruits



/*:
 ### symmetricDifference
 */
print("\n---------- [ symmetricDifference ] ----------\n")

favoriteFruits = Set(["Apple", "Orange", "Melon", "Kiwi"])
tropicalFruits = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])

// 교집합의 여집합 요소들을 반환
let exclusiveSet = favoriteFruits.symmetricDifference(tropicalFruits)
exclusiveSet

// 교집합의 여집합 요소들로 데이터 변경
favoriteFruits.formSymmetricDifference(tropicalFruits)
favoriteFruits


/*:
 ### union
 */
print("\n---------- [ union ] ----------\n")

favoriteFruits = Set(["Apple", "Orange", "Melon", "Kiwi"])
tropicalFruits = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])

// 합집합 반환
var unionSet = favoriteFruits.union(tropicalFruits)
unionSet

// 합집합 요소들로 데이터 변경
favoriteFruits.formUnion(tropicalFruits)
favoriteFruits

/*:
 ### subtracting
 */
print("\n---------- [ subtracting ] ----------\n")

favoriteFruits = Set(["Apple", "Orange", "Melon", "Kiwi"])
tropicalFruits = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])

// 차집합 반환
let uncommonSet = favoriteFruits.subtracting(tropicalFruits)
uncommonSet

// 교집합 요소 제거
favoriteFruits.subtract(tropicalFruits)
favoriteFruits


//: [Next](@next)
