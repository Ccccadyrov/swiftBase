//комментарий двумя слешами, многострочный /*коммент*/
let const = "HelloWorld" //константа
var variable = "HelloSwift" //переменная
variable = "HiSwift" //меняем переменную
print (variable + " and "+const)//выводим данные в консоль переменная+строка+конс
var number: Int = 10 //указали тип данных Int с большой буквы (регистр важно)
print (Int.min) //по такому принципу смотрим мин/макс числовых типов данных
//int имеет ту же разрядность как и разрядность системы (в данном случае Int64)
var dotNumber = 4.45 //бывает double(максимум 15 после точки) или float (максимум 6 знаков после точки)
var a = 14.88
var b = 1337
var sum = a+Double(b)// Привели тип данных, иначе ошибка
//по умолчанию дабл, флоат задается принудительно
//свифт определяет тип данных по значению автоматически
//клац опшн+лкм на переменную
var letters = "hello world"// кавычки = строка String
var letters2 = "again"
var sumString = letters+" "+letters2//конкантеация строк
print ("check \(letters2)")//интерполяция строк
var boolean = true//булев движ Bool соответственно тру/фалс
if boolean {
    print ("true")
} else {
    print ("notTrue")
}
//язык со строгой типизацией, не проебывайся
//унарные операторы префиксные -а !а (минус а, не а)6 постфиксные с!
//бинарные операторы + дефолтный инфиксный плюс а+б
//тернарный оператор а ? б : с (если а верно то выполняем б иначе с)
//присваивание =, арифметические операторы + - * / плюс минус умножить поделить, остаток от деления %
//Составные операторы присваивания +=, -= а+=1 (увеличиваем на 1 как в жс)
//Операторы сравнения ==, !=, >,<,>=,<= равно не равно больше меньше больше либо равно меньше либо равно
// тернарный условный оператор: выражение ? действие1 : действие 2 (если выражение тру тогда действие 1 иначе действие 2)
//операторы диапазона (а...б) - от а до б, (а..<б) от а до б не включая
//логические операторы !а - не а, && - и, || - или
//Ниже условия
var firstCard = 11
var secondCard = 9
if firstCard + secondCard == 21 {
    print("ochko")
} else if (firstCard+secondCard)>18 && (firstCard+secondCard)<21 {
    print("pochti ochko")
}
//
var weather = "rain"
switch weather {
    case "rain": print("use umbrella")//инструкция для значения дождь и т.д.
    case "snow": print("use more wear")
    case "sunny": print ("use glasses")
    default: print("idk about weather") //всегда добавляем дефолт, если перед ним добавить falltrought то сработает и кейс и дефолт
}
//
// циклы for in, while, repeat-while
var count = 1...3
for i in count {
    print("number is \(i)")
}
for _ in 1...3 {
    print ("step")
}//зарядили цикл без констант

for index in 0...9 {
    print ("\(index)*3=\(index*3)")
}
for i in 1...9 {
    for k in 1...9{
        print ("\(i)*\(k)=\(i*k)")
    }
}//таблица для веселья

//while условие {инструкция}
var c1 = 1
while c1 < 10 {
    c1+=1
}
print (c1)//константа после цикла поменялась

//repeat while аналогичен do while в других яп

var c2 = 1
repeat {
    print (c2)
    c2+=1
} while c2<=10 //условие в конце
print ("цикл прошел")
//заранее выходим из цикла через break
//составной тип данных tuple тапл/тьюпл (кортежи?)
var person = (name: "Igor", age: 40, isMarried: true, weight: 70.5) //составной тип не коллекция функционал ограничен
let aa = 10
let bb = "text"
var tuple1 = (aa, bb)
var tuple2 = (10, "hello")
var tuple3: (Int, String)
tuple3  = (45, "Swift")
var (weight, height) = (75, 190)

person.0
person.1
person.2
person.3//обращаемся к элементам тьюпл (почти как массив) по индексам? далее по именам

person.name
person.age
person.weight

let info = ("Petrov", 31, 80.5)
var (lastName, age, wweight) = info//связали с тьюплом выше, если какое-то значение не нужно используем _
lastName

var point1 = (x:4, y:3)
var point2 = (x:2, y:6)
point2 = point1 //можно так делать если формат одинаковый, используем тюплы для временного хранения данных (из функции или еще как-то)
//опциональные типы данных далее
//тип данных где значения может не быть
//пишется как  nil
var ageage: Int? = 12 //опциональный тип данных обозначаем вопросом
ageage = nil
if ageage == nil {
    print("variable is nil")
    
} else {
    (print ("age=\(String(describing: ageage))"))
}
//присвоили нил переменной и далее сделали проверку на наличие значений
let age2: Int? = 10
if var safeAge = age2 {
    safeAge+=1
} else {
    print("age=nil")
}//вытянули в безопасную переменную
////////////////////////////////////

let yearOfBirth = "1980"
Int(yearOfBirth)
if let saveYOB = Int(yearOfBirth) {
    saveYOB
}//это необходимо что бы удостовериться что в значении года рождения стоит только интеджер без букв строк и тд, что бы не возник нил или краш

var example1: String? = "text"
print (example1 ?? "default if string nil")//два знака вопроса - проверка экзампл на нил

//Int - интежер, Int? - опциональный интежер, Int! - неявно извлеченный опционал
var num3: Int! = nil
num3 = 10
num3 = num3+7
//Сначала нил, далее перебиваем значения. Используется для класов и структур

//дальше коллекции (массивы, множества и словари) Array Set Dictionary
//Коллекции изменяемы, элементы можно шевелить удалять добавлять и изменять, если не присвоенно константе
var array1 = Array<String>()//пустой массив строк полная форма записи
var array2 = [String]()//менее форма записи (краткая) является предпочтительнее

let apple = "apple"
let orange = "orange"
let lemon = "lemon"
let strawberry = "strawberry"

let fruits = [apple, orange, lemon, strawberry]//поместили переменные в массив
var shoppingList = ["eggs", "milk", "bread", "flower", "sweets"]//массив строк сразу по значению
//доступ к массиву осуществляется через методы и свойства либо через индекс значения
shoppingList.count //Метод вывел количество элементов
shoppingList.isEmpty //Метод выдает булево значение пустой массив или нет (пустой тру)
shoppingList.append("butter")//метод добавил в конец маспо
shoppingList[0]//вывели нулевой элемент массива
shoppingList[3]="salt"//поменяли цветы на соль
print (shoppingList)//получили измененный массив с новым элементом и заменой
shoppingList.insert("Sugar", at: 0)//вставили нулевой элемент и сместили вправо остальные

for item in shoppingList {
    print(item)
} //пробежали по всем элементам массива

for (index, value) in shoppingList .enumerated() {
    print ("Item \(index):\(value)")
}//метод енумерейтед + интерполяция строк

var updatedShoppingList = shoppingList + ["pepper"] //добавили массиву элемент

var numbers1 = [1,2,3,4,5]
var numbers2 = [6,7,8,9]
var sumNumbers = numbers1+numbers2 //сложили два массива в третий массив
//Далее множества (Set)
//Множества используем когда не важен порядок, хранит много значений одного типа, если нужно быть уверенным что значения не повторяются
var set = Set<String>() //создали пустой сет
//var listOfSports: Set<String> = ["badminton", "bowling", "tennis", "hockey", "running"]
var listOfSports: Set = ["badminton", "bowling", "tennis", "hockey", "running"] //не уточняем стринг, свифт поймет
listOfSports.count
listOfSports.isEmpty
listOfSports.insert("fishing")//добавляем в множество в рандомное место
listOfSports.remove("bowling")//удалили боулинг
listOfSports.contains("tennis")//проверили наличие значения

for sports in listOfSports {
    print(sports)
}

for sports in listOfSports.sorted() {
    print(sports)
}//отсортировали по возрастанию

let oddNum: Set = [1,3,5,7,9]
let evenNum: Set = [2,4,6,8]
let primeNum: Set = [2,3,5,7]
oddNum.union(evenNum).sorted()//юнион объединяет множества и потом сортирует(sorted)

oddNum.intersection(evenNum).sorted()//метод используется для создания множества ИЗ ОБЩИХ значений двух множеств
evenNum.intersection(primeNum)//общая двойка
oddNum.subtracting(primeNum).sorted()//отняли от первого множества второе  (и отсортировали)
oddNum.symmetricDifference(primeNum).sorted()//для создания нового множества из значений которые не повторяются в двух множествах

//Словари Dictionary контейнер с несколькими значениями одного и того-же типа, каждое значение идет с ключом-идентификатора и не имеют определенного порядка, используем если надо искать значения по ключу
//Dictionary<Key, Value> полная форма записи, ниже краткая
//[Key: Value] Эта предпочтительнее
var dictionary = [Int: String]() //создали пустой словарь
var heights = ["Ian":1.75, "Maria":1.6, "Igor":1.82, "Olga":1.66]
heights["Ian"]

var results = ["math":100, "engLang":85, "Geografy":75]
results.count
results.isEmpty
results["History"]=65 //добавили значение по ключу
results["math"]=99 //поменяли уже существующее значение
results.updateValue(70, forKey: "History")//Альтернативная замена элемента
results.updateValue(50, forKey: "Geometry")//Попробовали апдейт для несуществующего элемента получили нил
results.removeValue(forKey: "math")//Удалили математику (Справа написано какой элемент удаляем)
//ниже делаем итерации по парам ключ значение
for (subject, score) in results {
    print("\(subject):\(score)")
}

for subject in results.keys {
    print ("subject: \(subject)")
}//через метод ключ достали именования всех ключей

for points in results.values {
    print ("points:\(points)")
}//аналогично примеру выше - достали значения всех ключей

var keys = Array(results.keys)//собрали массив содержащий только ключи
var valuesDict = Array(results.values)//аналогично примеру выше только для значений
// ниже функции
//ФУНКЦИИ ДАЛЬШЕ
// Функция это самостоятельный фрагмент кода решающий определенную задачу
func greetings(){
    print ("HelloSwiftAgain")
}//задали самую простую функцию, которая ничего не принимает и не возвращает
greetings()//вызвали эту функцию
// для параметров внутри круглых скобок мы им присваиваем имя далее : и тип данных
func square(number:Int) {
    print (number*number)
} //простая функция для возведения в квадрат
square(number: 7)//использовали параметр для функции
//Выше функции принимали данные, так же они могут их возвращать (об этом ниже)
func squareUpgrade(number:Int) ->Int {
    return number*number
}
var resultF = squareUpgrade(number: 8)//присвоили переменной результат выполнения функции выше (ретерн возвращает значение и функция встает)
print(resultF)
//Если функция содержит только одно выражение - ретерн не нужен

func sum1() -> Int {
    return 5+5
}//тут ретерн так-же можно убрать

//возвращаем 2 или более значения из функции (через тьюпл или коллекции)
func getUser() -> [String] {
    ["Ivan", "Ivanov"]
}
let user = getUser()
print (user[0])
//функция возвращает массив строк

func getUserOne ()->[String:String] {
    ["firstName": "Ivan", "secondName":"Ivanov"]
}
let userOne = getUserOne()
print(userOne["firstName"])
//другое решение с ключами (вариант лучше, проще работать с данными, но чувствителен к регистру или значению

func getUserTwo() -> (first: String, second: String){
    (first:"Ivan", second: "Ivanov")
}
let userTwo = getUserTwo()
print (userTwo.first)//самое универсальное решение через тьюпл. К ключу в тьюпле добираемся через точку. Регистр не проебываем.
//Имена параметров
func sayHello (to name11: String) {
    print("Hello, \(name11)!")
}
sayHello(to: "Michael")
//пропуск имен параметров
func greet(_ person:String) {
    print ("Hello,\(person)!")
}

greet("IVAN")//не дали имя внешнему параметру

func greet1(name person:String) {
    print ("Hello,\(person)!")
}
greet1(name: "ivan")
//дали имя внешнему параметру

//параметры по умолчанию
print ("hell world", terminator: " ")
print ("hell world")
print ("hell world")
//параметр терминатор делает пробел вместо новой строки

func greet2(_ person:String, nicely: Bool = true) {
    if nicely==true {
        print("hello \(person)")
    }else {
        print("go out \(person)")
    }
}
greet2("idor", nicely: false)//задали параметр по умолчанию и поменяли его значение

//Вариативные функции или вариативные параметры (принимают любое количество параметров одного типа
print("hello", "Hello2", "Hello3") //можно сделать параметр вариативным добавив троеточие ... (Int...)
func square2(numbers:Int...) {
    for number in numbers {
        print("\(number) in square \(number * number)")
    }
}
square2(numbers: 1,2,3,4)//создали вариативную функцию и запустили

//сквозные параметры (все параметры передаваемые в цикл функции - константы, не изменяются. Что бы изменить надо сделать inout
func doubleIt(number: inout Int) {
    number*=2
}
var myNumber = 10
doubleIt(number: &myNumber) //сквозной параметр идет через амперсант
myNumber//значение переменной поменялось
//КЛОУЖЕРЫ (ЗАКРЫВАТЕЛИ?) Замыкания
//Типо анонимные функции
/*
 {(параметры) -> тип результата in
 тело клоужера (выражения)
 }
 */

let driving = {
    print("Royan Losging")
}
//создали функцию и присвоили константе
driving()

let driving2 = {(place: String) in
    print ("i`m going to \(place) in my car")
}
driving2("shkuri")

func pay(user: String, amount:Int) {
    //code Это для примера сравнивать с тем что ниже
}

let payment = {
    (user:String, amount: Int) in //in для того что бы показать конец списка параметров что бы измежать путаницы например с тьюплом
    //code это уже клоужер
}

let drivingWithReturn = {(place:String)-> String in
    return "i`m going to \(place) in my car"
}

let message = drivingWithReturn("london")
print (message)
//Выше присвоили значение выполнения клоужера переменной и потом принт его

let payment2 = {(user:String) in
    print ("Paying \(user)...")
}

let payment3 = {(user:String) ->Bool in
    print("paying \(user)...")
    return true
}

let payment4 = {() ->Bool in
    print("paying \(user)...")
    return true
} //Если что-то возвращаем, всегда параметр (даже пустой)
//замыкания можно передавать функции (Внимание на клоужер driving  выше)

func travel(action: ()->Void) {
    print("I`m ready")
    action()
    print("I`m done")
}

travel(action: driving)
//передали клоужер в функцию
//Клоужеры юзают в сетевых запросах (Для ассинхронности?)
func animate (duration1: Double, animations1: ()-> Void) {
    print ("starting a \(duration1) sec animation")
    animations1()
}

animate (duration1: 3, animations1: {
    print("Image")
}) //трейлинг кложуре синтакс

animate(duration1: 3) {
    print("image2")
}//если клоужр идет последним параметром - то можно сделать так
//клоужер принимает параметры и сам является параметром (читать далее)
//перечисления enum определяют общий тип для группы значений что бы их было проще использовать имеют любой тип данных (это типы первого класса)
let results11 = "failure"
let results2 = "failes"
let results3 = "fail"
enum Result11 {
    case success
    case failure
}
//case success, failure

var result4 = Result11.failure
result4 = .success //поменяли значение

let result5: Result11
result5 = .success


enum activity {
    case dancing
    case running(destination:String)
    case talking(topic:String)
    case singing(volume:Int)
}
let currentActivity = activity.dancing
switch currentActivity {
case .dancing: print("танцует")
case .running: print("бежит")
case .singing: print("поет")
case.talking: print("говорит")
}

let talking = activity.talking(topic: "football")

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

//чистые значения перечислений, свифт присвоит значения перечислений с нуля (автоматически)
let earth = Planet(rawValue: 2)
//получили землю по значению роу велью, потом задали собственную нумерацию (=1) и нумерация пошла не с нуля, теперь venus это все работает только для перечислений с типом Int

enum Phone: String {
    case Apple = "iPhone8"
    case Samsung = "Galaxy s10"
    case Google = "Pixel 2"
}//создали енам с типом стринг, далее доберем до роу велью
var myPhone = Phone.Apple
print (myPhone)
print (myPhone.rawValue)
//но если мы уберем роу велью - то будет строка с названием кейса
//Классы (Свифт ООП, позволяет представить программу как набор объектов)
/*
 класс является описанием объекта а объект является экземпляром данного класса
 все переменные или константы внутри класса называются свойствами класса
 функции внутри класса называются методы
 */
class Human {
    var age = 25
    var name = "Maria"
    func move () {
        print ("\(name) is moving")
    }
} //создали класс, далее создадим экземпляр класса Human
var maria = Human()
maria.age
maria.move()
//инициализация подразумевает подготовку класса или структуры к использованию этот процесс подразумевает начальную установку значений для свойств класса
//свойства класса должны иметь значения к моменту создания экземплра класса
class Human2 {
    var age:Int
    var name:String
    var status:String {
        if isQualified {
            return "\(name) is qualified"
        } else {
            return "\(name) is not qualified"
        }
    }//вычисляемое свойство, в фигурных скобках код
    var isQualified:Bool
    func move () {
        print ("\(name) is moving")
    }
    init(age:Int,name:String, isQualified:Bool){
        self.age = age
        self.name = name
        self.isQualified = isQualified
    }
}
var maria2 = Human2(age: 25, name: "Masha", isQualified: true)
//в примере выше мы инициализировали класс без заданных начальных значений
//свойства класса - хранимые (stored properties) и вычисляемые (computed properties)  в примере выше имя и возраст это хранимые свойства а статус - вычисляемое
maria2.status
//вычисляемые свойства не хранят значение
//пример вычисляемого свойства использующий геттер и сеттер
//программа вычисляет прибыль при вложении определенной суммы на определенный период в банке (условно)

class Account {
    var sum:Double = 0 //сумма вклада
    var rate:Double = 0.01//процентная ставка
    
    var profit: Double {
        get {return sum+sum*rate}
        set(newProfit) {self.sum=newProfit/(1+rate)}
    }
    
    init(sum:Double, rate:Double) {
        self.sum=sum
        self.rate=rate
    }
}
var myAcc: Account = Account(sum: 1000, rate: 0.1)
print (myAcc.profit)
//ожидаемая прибыль, ниже рассмотрим логику действий для того что бы узнать какую сумму нужно вложить для заданной прибыли
//свойство сет сработает когда мы переназначим значение (В нашем случае профит)
myAcc.profit = 2000
print(myAcc.sum) //получили необходимую сумму вклада для получения прибыли 2000
//посмотреть заново, обратить внимание на гетеры сетеры
//далее структуры

class HumanNew {
    var age:Int
    var name:String
    
    init (age: Int, name: String) {
        self.age = age
        self.name = name
    }
}

var humanNew = HumanNew(age: 20, name: "Pavel")
humanNew.age

struct HumanNew1 {
    var age:Int
    var name:String
}

var humanNew1 = HumanNew1(age: 25, name: "Viktor") //структуре не нужно прописывать инициализатор
humanNew1.age
humanNew1.age=35
humanNew1.age
//value type - Int String Bool struct array and more
//reference type - enum, class
var humanNew2 = HumanNew1(age: 30, name: "Olga")
humanNew2.age
humanNew2.name
humanNew2=humanNew1
humanNew2.age
humanNew2.name
humanNew2.age = 45
humanNew2.name = "Petr"
humanNew2.age
humanNew2.name
humanNew1.age
humanNew1.name
//приосходит копирование значений без ссылок, с классами такой трюк не пройдет и оба значения будут одинаковыми ссылаясь друг на друга
//работая внутри класса мы можем менять свойства с помощью метода, работая со структурой - перед методом необходимо указывать mutating - изменяющийся, пример ниже

struct Person11 {
    var name: String
    
    mutating func makeAnonymous () {
        name = "Anonumous"
    }
}

let string = "do or do not, there is no try" //строка это так-же структура внутри свифта у нее свои методы (почему эта инфа только сейчас?)
string.count
string.hasPrefix("do")
string.uppercased()
string.sorted()
//свойства типов
//создали по классу и структуре ниже
class Dog {
    var name: String
    var age: Int {
        didSet {
            if age>maxAge {
                age = oldValue
            }
        }//добавили наблюдатель свойств на случай если пользователь укажет возраст более 30
    }
    var maxAge = 30
    
    init(name:String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct Cat {
    var name: String
    var age: Int {
        didSet {
            if age>maxAge {
                age = oldValue
            }
        }//добавили наблюдатель свойств на случай если пользователь укажет возраст более 30
    }
    var maxAge = 30
}

var dog = Dog(name: "Bobick", age: 5)
var cat = Cat(name: "Pushock", age: 3,maxAge: 30)
dog.age
dog.age=35
dog.age
//наблюдатель свойств проверяет новй возраст и не дает установить более тридцати в случае с классом
cat.age
cat.age=100
cat.age
//наблюдатель так-же работает но если будет большое количество экземпляров свойство максЭйдж будет храниться для каждого, поэтому применяем свойства типов static
//ниже реализация того-же кода со свойством статик


class Dog1 {
    var name: String
    var age: Int {
        didSet {
            if age>Dog1.maxAge {
                age = oldValue
            }
        }
    }
    static var maxAge = 30
    static var howManyDogs = 0
    
    init(name:String, age: Int) {
        self.name = name
        self.age = age
        Dog1.howManyDogs+=1
    }
}

struct Cat1 {
    var name: String
    var age: Int {
        didSet {
            if age>Cat1.maxAge {
                age = oldValue
            }
        }
    }
    static var maxAge = 30
    static var howManyCats = 0
    init(name:String, age: Int) {
        self.name = name
        self.age = age
        Cat1.howManyCats+=1 //создали кастомный инициализатор который будет работать как счетчик, но для этого пришлось инициализировать и дефолтные параметры
    }
}

Cat1.howManyCats //не было создано ни одного экземпляра структуры кот1
var kitty = Cat1(name: "kotek", age: 3)//создали экземпляр структуры кот1
Cat1.howManyCats//был создан один экземпляр структуры кот1
//Наследования
//Наследования
//Класс может наследовать методы свойства и другие характеристики другого класса, дочерний класс/подкласс - класс который наследует
//Родительский класс/суперкласс - класс от которого наследуют
