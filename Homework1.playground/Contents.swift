import SwiftUI
import Foundation


//Ekrana 10 kez “Hello World!” yazdır.
for _ in 0...9{
    print("Hello")
}


//43 sayısına kadar olan TEK sayıları print et
for i in 1...43{
    if (i%2==1) {
        print(i)
    }
}


//Dışarıdan aldığı metnin soluna “TR-” ekleyip döndüren metot
func addTR(text:String) -> String {
    return "TR-"+text
}


//Dışarıdan girilen bir sayının rakamları toplamını bulan program. ( Örneğin kullanıcı 431 girdiğinde sonuç: olacak)
func sumOfNumbers(number: Int) -> Int {
    let sumInt = String(number).compactMap{$0.wholeNumberValue}.reduce(0, +)
    return sumInt
}
print(sumOfNumbers(number: 123))


//*** Doğduğum günden bugüne kaç gün geçtiğini gösteren metot? Dışarıdan date alacak int dönüyor.
func daysUntil(_ birthday: Date) -> Int {
    let cal = Calendar.current
    let today = cal.startOfDay(for: Date())
    let date = cal.startOfDay(for: birthday)
    let components = cal.dateComponents([.day, .month], from: date)
    let nextDate = cal.nextDate(after: today, matching: components, matchingPolicy: .nextTimePreservingSmallerComponents)
    return cal.dateComponents([.day], from: today, to: nextDate ?? today).day ?? 0
}


//Dışarıdan girilen üç sayıdan en büyüğünü bulan metot.
func biggestOfThree(_ num1 : Int, _ num2 : Int, _ num3 : Int){
    if (num1 > num2) {
        if num1 > num3 {
            print("Biggest number is \(num1)")
        } else {
            print("Biggest number is \(num3)")
        }
    }else{
        if num2 > num3 {
            print("Biggest number is \(num2)")
        }else{
            print("Biggest number is \(num3)")
        }
    }
}


//Çarpma işlemini kullanmadan dışarıdan girilen iki sayının çarpımını bulan metot.
func multiply(_ num1 : Int, _ num2 : Int) -> Int {
    var total :Int = 0
    for i in 1...num2 {
        total += num1
    }
    return total
}
multiply(10, 5)


//Dışarıdan bir metin alan aldığı metnin sadece ilk üç harfini döndüren fonksiyon.
func getFirstThreeLetter(_ text: String) -> String {
    return String(text.prefix(3))
}
getFirstThreeLetter("Ataberk")


//Dışarıdan bir isim dizisi alan ve isimleri tek tek print eden fonksiyon
func printNamesInArray(_ nameList: [String]) {
    for item in nameList {
        print(item)
    }
}


//Dışarıdan bir isim dizisi alan, ismin uzunluğu 4 den büyükse print eden fonksiyon.
func printNamesWithMoreThanFourLettersInArray(_ nameList: [String]) {
    for item in nameList {
        if item.count > 4 {
            print(item)
        }
    }
}


//Dışarıdan bir metin alan ve aldığı metinde kaç adet "e" harfi olduğunu söyleyen fonksiyon.
func numberOfEsInText(_ text: String) -> Int {
    var eCounter : Int = 0
    for item in text {
        if (item.lowercased() == "e") {
            eCounter+=1
        }
    }
    return eCounter
}
numberOfEsInText("Merhaba Eniste")


//Dışarıdan bir metin alan aldığı metnin sadece ilk harfini büyük diğer harflerini küçük yazacak şekilde yeni bir metin oluşturarak dönen fonksiyon.
func upperFirstLetter(_ text : String) -> String {
    var loveredText: String = text.lowercased()
    var firstLetter: String = String(loveredText.prefix(1).uppercased())
    loveredText.remove(at: loveredText.startIndex)
    loveredText = firstLetter + loveredText
    return loveredText
}
upperFirstLetter("sdfkjAqSAD")
