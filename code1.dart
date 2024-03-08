import 'dart:io';

void main() {
  List<Car> carList = [];

  print("Qeyd etmek istediyiniz masin sayini daxil edin:");
  int? masinSay = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < masinSay; i++) {
    print("${i + 1}. masinin modelini daxil edin:");
    String? model = stdin.readLineSync();
    print("${i + 1}. masinin rengini daxil edin:");
    String? color = stdin.readLineSync();
    print("${i + 1}. masinin suretini daxil edin:");
    int? speed = int.parse(stdin.readLineSync()!);
    print("${i + 1}. masinin ilini daxil edin:");
    int? year = int.parse(stdin.readLineSync()!);

    Car car = Car(model, color, speed, year);
    carList.add(car);

    print(
        '${i + 1}. Car: ${carList[i].model}, ${carList[i].color}, ${carList[i].speed}, ${carList[i].year}');
  }

  for (int i = 0; i < carList.length; i++) {
    print(
        '${i + 1}. Car: ${carList[i].model}, ${carList[i].color}, ${carList[i].speed}, ${carList[i].year}');
  }

  print("Yerine yetirmek istediyiniz emeliyyati secin:");
  print("1.Satdiginiz masini siyahidan silin...");
  print("2.Aldiginiz masini siyahiya elave edin:");
  print("0. Hecbir emeliyyat secmediniz...");

  int? emeliyyatNomresi = int.parse(stdin.readLineSync()!);

  if (emeliyyatNomresi == 1) {
    print("Silmek istediyiniz masinin indeksini daxil edin:");
    int? masinIndex = int.parse(stdin.readLineSync()!);
    carList.removeAt(masinIndex - 1);
    print("$masinIndex indexli masin siyahidan silindi...");
    print("Yenilenmis siyahinin hali:");
    for (int i = 0; i < carList.length; i++) {
      print(
          '${i + 1}. Masin: ${carList[i].model}, ${carList[i].color}, ${carList[i].speed}, ${carList[i].year}');
    }
  } else if (emeliyyatNomresi == 2) {
    print("Yeni masinin modelini daxil edin:");
    String? model = stdin.readLineSync();
    print("Yeni masinin rengini daxil edin:");
    String? color = stdin.readLineSync();
    print("Yeni masinin suretini daxil edin:");
    int? speed = int.parse(stdin.readLineSync()!);
    print("Yeni masinin ilini daxil edin:");
    int? year = int.parse(stdin.readLineSync()!);

    Car car = Car(model, color, speed, year);
    carList.add(car);
    print("Yeni masin siyahiyaya elave edildi. Yenilenmis siyahinin hali:");
    for (int i = 0; i < carList.length; i++) {
      print(
          '${i + 1}. Masin: ${carList[i].model}, ${carList[i].color}, ${carList[i].speed}, ${carList[i].year}');
    }
  } else if (emeliyyatNomresi == 0) {
    print("Hec bir emeliyyat secmediniz... Legv etdiniz...");
  }
}

class Car {
  String? model;
  String? color;
  int? speed;
  int? year;

  Car(this.model, this.color, this.speed, this.year);
}
