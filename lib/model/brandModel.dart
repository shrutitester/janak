class BrandModel {
  bool? status;
  String? message;
  List<Brands>? brands;

  BrandModel({this.status, this.message, this.brands});

  BrandModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    message = json['Message'];
    if (json['Brands'] != null) {
      brands = <Brands>[];
      json['Brands'].forEach((v) {
        brands!.add(Brands.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Status'] = status;
    data['Message'] = message;
    if (brands != null) {
      data['Brands'] = brands!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Brands {
  String? brandCode;
  String? brandName;

  Brands({this.brandCode, this.brandName});

  Brands.fromJson(Map<String, dynamic> json) {
    brandCode = json['BrandCode'];
    brandName = json['BrandName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BrandCode'] = brandCode;
    data['BrandName'] = brandName;
    return data;
  }
}