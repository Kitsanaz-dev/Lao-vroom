class Car {
  final String name;
  final String brand;
  final String type;
  final String img;
  final String gear;
  final String seat;
  final String fuel;
  final String rate;
  final String pricePerDay;
  final String pricePerMonth;

  const Car({
    required this.name,
    required this.brand,
    required this.type,
    required this.img,
    required this.gear,
    required this.seat,
    required this.fuel,
    required this.rate,
    required this.pricePerDay,
    required this.pricePerMonth,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      name: json['name'],
      brand: json['brand'],
      type: json['type'],
      img: json['img'],
      gear: json['gear'],
      seat: json['seat'],
      fuel: json['fuel'],
      rate: json['rate'],
      pricePerDay: json['priceperday'],
      pricePerMonth: json['pricepermonth'],
    );
  }
}
