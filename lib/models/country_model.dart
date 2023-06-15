class CountryModel {
  final CountryData countryData;
  final List countries;

  CountryModel({
    required this.countryData,
    required this.countries,
  });

  List<String> get countriesRandom {
    List<String> countrieNames = [...countries];
    countrieNames.add(countryData.countryName);
    countrieNames.shuffle();
    return countrieNames;
  }

  factory CountryModel.fromJson(Map json) {
    return CountryModel(
      countryData: CountryData.fromMap(json['countryData']),
      countries: json['countries'],
    );
  }
}

class CountryData {
  final String id;
  final String countryName;
  final String countryImage;

  CountryData({
    required this.id,
    required this.countryName,
    required this.countryImage,
  });

  factory CountryData.fromMap(Map map) {
    return CountryData(
      id: map['id'],
      countryName: map['nome'],
      countryImage: map['imagem'],
    );
  }
}
