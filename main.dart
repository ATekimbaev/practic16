import 'dart:io';

void main() {
  Cloth().getName();
  print(Cloth().getData());
}

class Cloth {
  String? name;
  int? price;

  getName() {
    print('Введите назавние вещи');
    name = stdin.readLineSync();
    if (name != null) {
      getPrice();
    }
    return name;
  }

  getPrice() {
    print('Введите цену вещи');
    price = int.parse(stdin.readLineSync()!);
    return price;
  }

  getData() {
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
    if (consist != null) {
      getNumber();
    }
  }

  getNumber() {
    print('Введите количество');
    number = int.parse(stdin.readLineSync()!);
    return number;
  }
}
