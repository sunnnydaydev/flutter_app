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