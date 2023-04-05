//свойства типов наследования расширения и протоколы в этом файле

class Dog {
    var name: String
    var age: Int {
        didSet {
            if age>Dog.maxAge {
                age=oldValue
            }
        }//наблюдатель свойства для возраста, вернет старое значение если будет указано более максимального возраста
    }
    static var maxAge = 30
    static var howManyDogs = 0
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
        Dog.howManyDogs+=1
    }
}

struct Cat {
    var name:String
    var age:Int {
        didSet {
            if age>Cat.maxAge {
                age=oldValue
            }
        }//наблюдатель свойства для возраста, вернет старое значение если будет указано более максимального возраста
    }
    static var maxAge = 30
    static var howManyCats = 0
    init (name:String, age: Int) {
        self.name = name
        self.age = age
        Cat.howManyCats+=1//так как добавили свойство типов, необходимо все инициализировать
    }
}


//создали класс дог и структуру кот, создадим по 1 экземпляру
var dog = Dog(name: "Sobaken", age: 5)
var cat = Cat(name: "koshka", age: 3)
//добавим наблюдатель свойств для age что бы пользователь не ввел значение больше максимального возраста
dog.age //добрались до свойства age
dog.age = 35 //присвоили age недопустимое по нашему условию значению
dog.age //сработал наблюдатель свойств и значение не изменилось
//в случае со структурой cat свойство maxAge нужно инициализировать самостоятельно третьим параметром
cat.age
cat.age = 100
cat.age
//все работает как и с классами
//создали по экземпляру для класса и структуры, у каждого экземпляра хранится свойство maxAge которое является одним и тем-же для каждого экземпляра, если экземпляров будет много - то и лишних значений будет много
//Для этого нужны свойства типов - свойства самого класса/структуры задаются с помощью ключевого static
//После этого обращение к свойству делается через имя самой структуры
//инициализацию у структуры из скобок удаляем, теперь каждый экземпляр будет обладать этим свойством
Dog.howManyDogs
var dog1 = Dog(name: "Gav", age: 6)
Dog.howManyDogs
//добавили классу счетчик хауманидогс и протестировали его, добавим такой же структуре (добавили, пришлось доделывать инициализаторы)
Cat.howManyCats
// /////////////////////////////////////////////////////////////////// (еще есть ленивые свойства, но они душные)
//наследования
//класс наследует методы свойства и другие характеристики другого класса Родительский класс/суперкласс - дочерний класс/подкласс

class Ddog {
    var name = ""
    var breed = ""
    var info:String {
        return "The breed of\(name) is \(breed)"
    }//геттер один  мы его не пишем
    func makeNoize() -> String {
        return "Hello"
    }
} //создали класс, далее создадим дочерний класс

class Corgi: Ddog {
}//создали дочерний класс

var corgi = Corgi()
corgi.name="Alisa"
corgi.makeNoize()
//создали экземпляр класса, задали имя и проверили метод мейкнойз
class Corgi1: Ddog {
    override func makeNoize() -> String {
        return "Hello Sir"
    }
}//создали новый подкласс и изменили родительское свойство через override
var corgi1 = Corgi1()
corgi1.makeNoize()
//создали экземпляр класса корги1 и проверили новое свойство

class Corgi2: Ddog {
    override func makeNoize() -> String {
        return super.makeNoize() + " " + "Sir hello"
    }
}//взяли родительское свойство + добавили своего, слово супер указывает на родительский класс, с его помощью можно расширить функционал
var corgi2 = Corgi2()
corgi2.makeNoize()
//Далее расширения
//расширения помогают добавить новый функционал к классам структурам и перечислениям
//мы можем добавить новый метод новое свойство новый инициализатор и так далее
//Интеджер - структура встроенная в свифт, на ней и потренируемся

extension Int {
    
    func squadron()->Int {
        return self*self //экземпляр структуры умножаем на себя же
    }//метод ничего не принимает а возвращает интеджер
    
    var isEven: Bool {
        return self%2==0
    }
    
    func repetition(task:()-> Void) {
        for _ in 0..<self {
            task()
        }
    }
    
}
//проверим созданное расширение в действии
var number = 10
number.squadron()//сработало
number.isEven
number.repetition {
    print ("text")
}


extension Double {
    
    var meter: Double {
        return self
    }
    var kilometer: Double {
        return self/1000
    }
    var santimeter:Double {
        return self*100
    }
    var millimeter:Double {
        return self*1000
    }
}

var double = 12.0
double.kilometer
double.santimeter
double.millimeter
