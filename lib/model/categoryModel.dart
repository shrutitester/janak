class CategoryModel {
  bool? status;
  String? message;
  List<DesignCategories>? designCategories;

  CategoryModel({this.status, this.message, this.designCategories});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    message = json['Message'];
    if (json['DesignCategories'] != null) {
      designCategories = <DesignCategories>[];
      json['DesignCategories'].forEach((v) {
        designCategories!.add(DesignCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Status'] = status;
    data['Message'] = message;
    if (designCategories != null) {
      data['DesignCategories'] =
          designCategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DesignCategories {
  String? designCatCode;
  String? designCatName;

  DesignCategories({this.designCatCode, this.designCatName});

  DesignCategories.fromJson(Map<String, dynamic> json) {
    designCatCode = json['DesignCatCode'];
    designCatName = json['DesignCatName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DesignCatCode'] = designCatCode;
    data['DesignCatName'] = designCatName;
    return data;
  }
}