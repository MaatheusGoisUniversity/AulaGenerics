import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array
public func findElement<T: Equatable>(_ array: [T], _ element: T) -> Bool {
    return array.firstIndex(of: element) != nil
}

print(findElement([1,2], 3))


//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico
extension Array where Element: AdditiveArithmetic {
    public func reduce() -> Element {
        return reduce(.zero, {$0 + $1})
    }
}

print([1,3,3].reduce())


//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
func sumArray<T: Equatable>(_ a: [T], _ b: [T]) -> Int {
    return a.count + b.count
}

print(sumArray(["1"], ["4"]))


//BONUS TODO: Fazer o método acima receber N arrays
func sumArray<T: Equatable>(_ a: [T]...) -> Int {
    return a.reduce(Int.zero, {$0 + $1.count})
}

print(sumArray([1000,20000,10000], [21231,334534,4567567], [21231,334534,4567567]))
