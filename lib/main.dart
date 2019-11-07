import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo（我在手机的应用列表显示）",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: faceObject,
            child: Text("Click"),
          ),
        ),
      ),
    );
  }
}

/// 基础语法:基本类型
void baseType() {
  /// 1：变量的定义（dart 没有byte char short float。int double占8字节，64位）
  bool isTrue = true; // 布尔类型
  int number = 10; // 整型
  double score = 99.67; // 小数

  /// 2、常量
  final int FLAG = 0; // 运行时常量，运行期间不可变。
  const int TYPR = 1; // 编译时常量，编译期间就确定

  /// 3、自推断-弱语言类型 var
  var weak = "我是弱语言类型";

  /// 注意：Dart 中一切皆对象，包括 int、函数.

  /// 4、String

  String name = "sunnyDay "; //字符串
  String age = "18";
  var upCaseName = name.toUpperCase();
  var trimName = name.trim();
  print(
      "upCaseName和trimName是否相等：${upCaseName == trimName}"); // 注意这里使用+链接失败，推荐使用 模板字符串 方式获取
  print(identical(name, age)); // 比较对象
}

/// 基础语法：集合 list、set、map
void baseCollection() {
  /// 一、list的几种声明:

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
  //mlist.add(3);

  // 遍历：Unsupported operation: Cannot add to an unmodifiable list
  for (int temp in mlist) {
    print(temp);
  }

  var setList = Set();
  setList.add(1);
  setList.add(2);

  var mapList = Map<String, String>();
  mapList["key1"] = "value1";
  mapList["key2"] = "value2";

  for (String s in mapList.keys) {
    print(s);
  }
  for (String s in mapList.values) {
    print(s);
  }
}

void baseObject() {
  Object str1 = "123";
  // str1.age = 20; // 编译就不通过 类型不正确

  dynamic str2 = "456";
  //str2.name = 3; // 运行报错：
  // The following NoSuchMethodError was thrown while handling a gesture:
  // Class 'String' has no instance setter 'name='.
}

void conditionAndLoop() {
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
  while (num > 0) {
    print(num--);
  }
}

// 函数
void baseFunction() {
  debugPrint("------------------------结果----------------------");
  print(sum(1)); // 第二个参数为可选参数，可以不填
  print(sum(1, 2));

  // 位置可以任意换
  print(add(y: 1, x: 2));
  print(add(x: 1, y: 2));
  test("Tom", 20);
}

int sum(int num1, [int num2]) {
  // num2要有默认值（int num2=1） 否则报错 :The following NoSuchMethodError was thrown while handling a gesture:
  return num1 + num2;
}

int add({int x = 0, int y = 1}) {
  return x + y;
}

void test(String name, int age) {
  print("name:$name age: $age");
}

void baseException() {
  throw Exception("抛出异常");

  try {} on Exception catch (exception) {
    print(exception.toString());
  } finally {}
}

class MyClass {
  int x; // 不用下划线开头默认public
  int _y; // 代表 private

  MyClass(int x, int y)
      : x = x,
        _y = y {
    // todo
  }

  // getter
  int get getX => x;

  int get getY {
    return _y;
  }

  set setX(int x) => this.x = x; // 注意这里的this使用

  set setY(int y) {
    this._y = y;
  }
}

// 面向对象
void faceObject() {
  MyClass myClass = MyClass(1, 2);

  // 使用时又类似属性访问（dart有点狗）
  myClass.setX=8;
  myClass.setY=8;
  // 使用时又类似属性访问（dart有点狗）
  print(myClass.getX);
  print(myClass.getY);
}
