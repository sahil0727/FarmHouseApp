class FarmHouse {
  int id;
  String name;
  String image;
  List<String>? subImage;
  int farmHouseSize;
  String swimmingPoolSize;
  int totalCapacity;
  int extraPersonCharge;
  String contact;
  String address;

  TimeForEntry timeForEntry;
  TimeForExit timeForExit;
  Availability? availability;
  PriceOtherDay priceOtherDay;
  PriceWeekEnd priceWeekEnd;

  FarmHouse({
    required this.id,
    required this.name,
    required this.image,
    this.subImage,
    required this.farmHouseSize,
    required this.swimmingPoolSize,
    required this.totalCapacity,
    required this.extraPersonCharge,
    required this.contact,
    required this.address,
    required this.timeForEntry,
    required this.timeForExit,
    this.availability,
    required this.priceOtherDay,
    required this.priceWeekEnd,
  });
}

class TimeForEntry {
  String hour12;
  String hour24;

  TimeForEntry({
    required this.hour12,
    required this.hour24,
  });
}

class TimeForExit {
  String hour12;
  String hour24;

  TimeForExit({
    required this.hour12,
    required this.hour24,
  });
}

class Availability {
  int? kitchen, bedroom, bathroom, khatla, gadla;

  Availability({
    this.kitchen,
    this.bedroom,
    this.bathroom,
    this.khatla,
    this.gadla,
  });
}

class PriceOtherDay {
  int day, night;
  PriceOtherDay({
    required this.day,
    required this.night,
  });
}

class PriceWeekEnd {
  int day, night;
  PriceWeekEnd({
    required this.day,
    required this.night,
  });
}
