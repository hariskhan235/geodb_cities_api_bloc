class CountriesDataModel {
  CountriesDataModel({
    required this.data,
    required this.links,
    required this.metadata,
  });
  late final List<Data> data;
  late final List<Links> links;
  late final Metadata metadata;

  CountriesDataModel.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
    links = List.from(json['links']).map((e) => Links.fromJson(e)).toList();
    metadata = Metadata.fromJson(json['metadata']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    _data['links'] = links.map((e) => e.toJson()).toList();
    _data['metadata'] = metadata.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.wikiDataId,
    required this.name,
    required this.country,
    required this.countryCode,
    required this.region,
    required this.regionCode,
    required this.regionWdId,
    required this.latitude,
    required this.longitude,
    required this.population,
  });
  late final int id;
  late final String wikiDataId;
  late final String name;
  late final String country;
  late final String countryCode;
  late final String region;
  late final String regionCode;
  late final String regionWdId;
  late final double latitude;
  late final double longitude;
  late final int population;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    wikiDataId = json['wikiDataId'];
    name = json['name'];
    country = json['country'];
    countryCode = json['countryCode'];
    region = json['region'];
    regionCode = json['regionCode'];
    regionWdId = json['regionWdId'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    population = json['population'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['wikiDataId'] = wikiDataId;
    data['name'] = name;
    data['country'] = country;
    data['countryCode'] = countryCode;
    data['region'] = region;
    data['regionCode'] = regionCode;
    data['regionWdId'] = regionWdId;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['population'] = population;
    return data;
  }
}

class Links {
  Links({
    required this.rel,
    required this.href,
  });
  late final String rel;
  late final String href;

  Links.fromJson(Map<String, dynamic> json) {
    rel = json['rel'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rel'] = rel;
    _data['href'] = href;
    return _data;
  }
}

class Metadata {
  Metadata({
    required this.currentOffset,
    required this.totalCount,
  });
  late final int currentOffset;
  late final int totalCount;

  Metadata.fromJson(Map<String, dynamic> json) {
    currentOffset = json['currentOffset'];
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['currentOffset'] = currentOffset;
    _data['totalCount'] = totalCount;
    return _data;
  }
}
