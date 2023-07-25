class TravelModel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String discription;
  String price;

  TravelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.discription,
    required this.price,
  });
}

List<TravelModel> travelList = [
  TravelModel(
      name: "New York",
      location: "America, United States",
      image: "assets/images/newyork.jpg",
      distance: "70",
      temp: "13",
      rating: "8",
      discription: "New York, often called New York City or NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is the most densely populated major city in the United States. The city is more than twice as populous as Los Angeles, the nation's second-largest city, and has a larger population than 38 of the nation's 50 states. New York City is located at the southern tip of New York state.",
      price: "5000"),

  TravelModel(
      name: "Paris",
      location: "Europe ,France",
      image: "assets/images/paris.jpg",
      distance: "46",
      temp: "12",
      rating: "9",
      discription: """Paris is the capital and most populous city of France, with an official estimated population of 2,102,650 residents as of 1 January 2023 in an area of more than 105 km2 (41 sq mi), making it the fourth-most populated city in the European Union as well as the 30th most densely populated city in the world in 2022. Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, culture, fashion, gastronomy and many areas.""",
      price: "4000"),

  TravelModel(
      name: "Tehran",
      location: "Asia, Iran",
      image: "assets/images/tehran.jpg",
      distance: "13",
      temp: "17",
      rating: "7",
      discription: "Tehran is the capital and largest city of Iran, located in Tehran Province. With a population of about 9.5 million people in the city and around 16 million in the larger metropolitan area of Greater Tehran, Tehran is the most populous city in Western Asia, and has the second-largest metropolitan area in the Middle East, after Cairo. It is ranked 24th in the world by metropolitan area population.",
      price: "3000"),

  TravelModel(
      name: "Rome",
      location: "Europe, Italy",
      image: "assets/images/rome.jpg",
      distance: "52",
      temp: "15",
      rating: "8.5",
      discription: """Rome is the capital city of Italy. It is also the capital of the Lazio region the centre of the Metropolitan City of Rome, . With 2,860,009 residents in 1,285 km2 (496.1 sq mi), Rome is the country's most populated comune and the third most populous city in the European Union by population within city limits. The Metropolitan City of Rome, with a population of 4,355,725 residents, is the most populous metropolitan city in Italy.Its metropolitan area is the third-most populous within Italy.""",
      price: "4500"),
];
