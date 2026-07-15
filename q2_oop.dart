//2.1
abstract class MenuItem {
  final String name;
  final double basePrice;
  MenuItem(this.name, this.basePrice);
  double price();
  void show() {
    print('${name} - ${price()} บาท');
  }
}

//2.2
class Drink extends MenuItem {
  int toppings;
  Drink(super.name, super.basePrice, this.toppings);
  @override
  double price() {
    return basePrice + (10 * toppings);
  }
}

class Food extends MenuItem {
  String size;
  Food(super.name, super.basePrice, this.size);
  @override
  double price() {
    switch (size) {
      case 'S':
        return basePrice * 1;
      case 'M':
        return basePrice * 1.2;
      case 'L':
        return basePrice * 1.5;
    }
    return basePrice;
  }
}

//2.4
class Wallet {
  double _balance = 300;
  double get balance => _balance;
  set balance(double input) {
    if (input < 0) {
      print('ผิดพลาด: ยอดเงินติดลบไม่ได้');
    } else {
      _balance = input;
    }
  }

  bool pay(double baht) {
    if (baht > balance) {
      print('ยอดเงินไม่พอ');
      return false;
    } else {
      print('ชำระเงินสำเร็จ');
      balance -= baht;
      return true;
    }
  }
}

void main(List<String> args) {
  //2.3
  double sum = 0;
  List<MenuItem> order = [
    Drink('ลาเต้', 55, 1),
    Food('ข้าวผัด', 60, 'L'),
    Drink('อเมริกาโน่', 45, 0),
  ];
  for (MenuItem i in order) {
    i.show();
    sum += i.price();
  }
  print('ยอดเงินรวมทั้งสิ้น: $sum บาท');
  print('---');

  //2.4
  Wallet().balance = -5;
  Wallet().pay(sum);
}
