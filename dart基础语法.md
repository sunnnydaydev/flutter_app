### 一、常见数据类型

###### 1、变量的定义
>变量的定义（dart 没有byte char short float。int double占8字节，64位）

```dart
  bool isTrue = true; // 布尔类型
  int number = 10; // 整型
  double score = 99.67; // 小数
```

###### 2、常量

```dart
  final int FLAG = 0; // 运行时常量，运行期间不可变。
  const int TYPR = 1; // 编译时常量，编译期间就确定
```

###### 3、自推断-弱语言类型 var

```dart
var weak = "我是弱语言类型";
```

###### 4、String类型

```dart
 String name = "sunnyDay "; //字符串
  String age = "18";
  var upCaseName = name.toUpperCase();
  var trimName = name.trim();
  print("upCaseName和trimName是否相等：${upCaseName == trimName}"); // 注意这里使用+链接失败，推荐使用 模板字符串 方式获取
  print(identical(name, age)); // 比较对象
```
> 1、==比较值
>
> 2、identical比较对象
>

### 二、集合

###### 1、list常见声明及其遍历

```dart

  //1、以构造函数的方式声明,且添加泛型限制。（new 对象时关键字new  可以省略）
  var numberList = List<int>();
  numberList.add(1);
  numberList.add(2);

  // 2、[] 方式，类型自推断
  var languageList = ["dart", "groovy", "java", "kotlin"];

  // 3、限制 泛型
  var nameList = <String>["Tom", "Kate"];

  // 4、不可变list- const
  const mlist = [1, 2]; // 等同 var mlist = const[1,2];
  //mlist.add(3); Unsupported operation: Cannot add to an unmodifiable list

  // 5、遍历：
  for (int temp in mlist) {
    print(temp);
  }
```

###### 2、set集合

```dart
var setList = Set();
  setList.add(1);
  setList.add(2);

```

###### 3、map

```dart
 var mapList = Map<String, String>();
  mapList["key1"] = "value1";
  mapList["key2"] = "value2";

  for (String s in mapList.keys) {
    print(s);
  }
  for (String s in mapList.values ) {
    print(s);
  }
```

### 三、dynamic 和 Object
>Object 为dart 对象的超类。Object 和 dynamic 都使得我们可以接收任意类型的参数，但两者的区别非常的大
>
>1、Object会在编译期间进行类型检测
>
>2、dynamic则告诉编译器，编译期间。知道自己在做什么，不用做类型检测。但是类型不正确时运行期间时会报错的。

```dart
  Object str1 = "123";
  str1.age = 20; // 编译就不通过 类型不正确
  
  
  dynamic str2 = "456";
  str2.name = 3; // 运行报错：
  // The following NoSuchMethodError was thrown while handling a gesture:
  // Class 'String' has no instance setter 'name='.
```
>和kt一样可以使用 is关键字来进行类型判断

### 四、条件、循环语句
> if else 、switch case、 for、while
>

```dart

 // if else
  bool isChecked = true;
  if (isChecked) {
    print("if语句执行");
  } else {
    print("else语句执行");
  }

  // switch case
  String name = "Tom";
  switch (name) {
    case "Kate":
      print("i am kate");
      break;
    case "Tom":
      print("i am tom");
      break;
    default:
      break;
  }

  for (int i = 0; i < 10; i++) {
    print(i);
  }

  int num = 10;
  while(num>0){
    print(num--);
  }
```
>switch 支持 枚举、String 类型
>

### 五、函数

###### 1、可选参数的函数
>参数的定义写在[]中代表参数可选,但是可选参数一定要有默认值。
>

```dart
// 函数
void baseFunction() {
  print(sum(1)); // 第二个参数为可选参数，可以不填，但是定义第二个参数时默认值是要有的。
  print(sum(1,2));
}

int sum(int num1, [int num2]) {// num2要有默认值（int num2=1） 否则报错 :The following NoSuchMethodError was thrown while handling a gesture:
  return num1 + num2;
}
```
>注意：可选参数一定要有默认值！！！
>

###### 2、具名参数
> 参数的定义放在{}中即可

```dart
  // 调用时位置可以任意换
  print(add(y: 1,x: 2));
  print(add(x: 1,y: 2));

int add({int x = 0, int y = 1}) {
  return x + y;
}
```

###### 3、其他
>0、dart 支持lambda、等略。
>
>1、但是dart 不支持方法重载、
>
>2、但是dart 不支持方法重载、
>
>3、但是dart 不支持方法重载、
>
>

### 六、异常
>抛出、捕获
>

```dart
  //1、 抛出
  throw Exception("抛出异常");

  //2、 捕获
  try{
   
  } on Exception  catch(exception) {
     print(exception.toString());
  }finally{

  }

 // 3、抛出任意对象
throw 10;
```
>dart  可以抛出任意对象

### 七、类
###### 1、传统方式定义及其初始化

```dart
class MyClass {
  int x;
  int y;

  MyClass(int x, int y) {
    this.x = x;
    this.y = y;
  }
}
```

###### 2、简洁方式初始化

```dart
class MyClass {
  int x;
  int y;
  MyClass(this.x, this.y);
}
```
>这样就用户new 对象时直接在构造中完成了成员的初始化。
>

###### 3、初始化列表的方式
```dart
class MyClass {
  int x;
  int y;
  MyClass(int x, int y):x=x,y=y{
    //  函数体 todo 
  }
}
```
>1、这样的方式不用写 this dart知道第一个x为this.x,第一个y为this.y
>
>2、初始化列表的语句会在构造函数体语句前执行。
>

###### 4、权限访问
>Dart 使用 package 的概念来管理源码和可见性。它没有 public、private 之类的访问权限控制符，默认情况下，所有的符号都是公开的。如果我们不想某个变量对包的外部可见，可以使用下划线开头来给变量命名。

```dart
class MyClass {
  int x;   // 不用下划线开头默认public
  int _y; // 下划线开头的成员变量代表 private

}
```

###### 5、getter的两种定义方式
>getter 的定义 需要get关键字+方法名 且不需要括号以及参数

(1)方式1
```dart
int get getX => x;
```

(2)方式2

```dart
 int get getY{
    return _y;
  }
```

###### 6、setter定义
>需要使用 set 方法名（参数）=> // todo set


```dart
// 定义方式1
 set setX(int x) => this.x = x; // 注意这里的this使用

// 定义方式2
  set setY(int y) {
    this._y = y;
  }
```
>注意使用方式1时要带this，否则设置失败

###### 7、继承

(1) 注意
- 使用关键字 extends 继承一个类

- 子类会继承父类可见的属性和方法，不会继承构造方法

- 子类能够复写父类的方法，getter 和 setter

- 单继承，多态性

```dart
// 父类
class Animal {
  String _name;

  void run() {
    print("$_name会跑！");
  }
}
// 子类

class Person extends Animal {
  @override
  void run() {
    print("人会跑");
  }

  void study() {
    print("人学习");
  }
}
```
>dart 多态机制 编译期间不通过，需要用户手动转型。
>


（2）带初始化列表的初始化顺序
>1、先执行子类 initializer list，但只初始化自己的成员变量
>
>2、初始化父类的成员变量
>
>3、执行父类构造函数的函数体
>
>4、执行之类构造函数的函数体


(3)不带初始化列表

>如果父类没有无名无参构造方法，则需要显示调用父类的构造方法

 ```dart
class Animal {
  String _name;
 
  Animal(String name) {
      _name = name;
      print("父类构造");
    }
}

class Person extends Animal {
 Person(String name) : super(name) {
    print("子类构造");
  }
}
```
>注意：初始化列表的再次回顾
>
>方法括号后面直接：接的就是初始化列表！
>
>方法括号后面直接：接的就是初始化列表！
>
>方法括号后面直接：接的就是初始化列表！
### 八、泛型

>Dart 的泛型参数类型在运行时是保留的
>
### 九、Future


