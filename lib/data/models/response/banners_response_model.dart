import 'dart:convert';

class BannersResponseModel {
  List<Banner>? data;

  BannersResponseModel({
    this.data,
  });

  factory BannersResponseModel.fromJson(String str) =>
      BannersResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannersResponseModel.fromMap(Map<String, dynamic> json) =>
      BannersResponseModel(
        data: json["data"] == null
            ? []
            : List<Banner>.from(json["data"]!.map((x) => Banner.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Banner {
  int? id;
  String? name;
  String? bannerUrl;
  int? isEnable;
  DateTime? createdAt;
  DateTime? updatedAt;

  Banner({
    this.id,
    this.name,
    this.bannerUrl,
    this.isEnable,
    this.createdAt,
    this.updatedAt,
  });

  factory Banner.fromJson(String str) => Banner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Banner.fromMap(Map<String, dynamic> json) => Banner(
        id: json["id"],
        name: json["name"],
        bannerUrl: json["banner_url"],
        isEnable: json["is_enable"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "banner_url": bannerUrl,
        "is_enable": isEnable,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
