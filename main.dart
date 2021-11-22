import 'dart:io';

void main() {
  Content().getData();
}

class Cloth {
  String? name;
  int? price;

  getName() {
    print('Введите назавние вещи');
    name = stdin.readLineSync();

    return name;
  }

  getPrice() {
    print('Введите цену вещи');
    price = int.parse(stdin.readLineSync()!);
    return price;
  }
}

class Developer extends Cloth {
  String? devName;

  getData() {
    print('Введите производителя');
    devName = stdin.readLineSync();
    return devName;
  }
}

class Content extends Developer {
  String? consist;
  int? number;

  getConsist() {
    print('Введите состав');
    consist = stdin.readLineSync();
    return consist;
  }

  getNumber() {
    print('Введите количество');
    number = int.parse(stdin.readLineSync()!);
    return number;
  }

  getData() {
    var a = getName();
    var b = getPrice();
    var c = Developer().getData();
    var d = getConsist();
    var x = getNumber();

    print('''*****************
    Назавние вещи: $a
    Цена вещи: $b
    Производитель: $c
    Состав: $d
    Количество: $x 
    *****************''');
  }
}
