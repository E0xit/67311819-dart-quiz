const double vatRate = 0.07;
void main(List<String> args) {
  //1.1
  final String shopName;
  shopName = 'Dart Cafe';
  print('ร้าน: $shopName');
  print('อัตราภาษี (vatRate): $vatRate');
  print('---');
  //1.2
  List<String> categories = ['เครื่องดื่ม', 'ของคาว', 'ของหวาน'];
  Map<String, int> menu = {
    'ลาเต้': 55,
    'ข้าวผัด': 60,
    'ได่ทอด': 35,
    'เค้ก': 25,
  };
  print('หมวดเมนู: $categories');
  print('จำนวนเมนูทั้งหมด: ${menu.length} รายการ');
  print('ราคาลาเต้: ${menu['ลาเต้']} บาท');
  print('---');
  //1.3
  print('เมนูราคาตั้งแต่ 50 ขึ้นไป');
  for (var m in menu.entries) {
    if (m.value > 50) {
      print('${m.key} : ${m.value} บาท');
    }
  }
  print('---');
  //1.4
  print('ยอดสุทธิ (ไม่มีส่วนลด): ${calTotal(55, 2)} บาท');
  print('ยอดสุทธิ (ส่วรลด 10 บาท): ${calTotal(55, 2, 10)} บาท');
  //1.5
  String? coupon;
  print('ความยาวคูปอง: ${coupon ?? 0}');
  coupon ??= 'NO-COUPON';
  print('คูปองหลังกำหนดค่า: ${coupon}');
}

double calTotal(int price, int qty, [double? discount]) {
  return (price * qty - (discount ?? 0)) * (1 + vatRate);
}
