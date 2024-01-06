class SupplierModel {
  bool? status;
  String? message;
  int? records;
  List<Parties>? parties;

  SupplierModel({this.status, this.message, this.records, this.parties});

  SupplierModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    message = json['Message'];
    records = json['Records'];
    if (json['Parties'] != null) {
      parties = <Parties>[];
      json['Parties'].forEach((v) {
        parties!.add(Parties.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Status'] = status;
    data['Message'] = message;
    data['Records'] = records;
    if (parties != null) {
      data['Parties'] = parties!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Parties {
  String? partyCode;
  String? partyName;

  Parties({this.partyCode, this.partyName});

  Parties.fromJson(Map<String, dynamic> json) {
    partyCode = json['PartyCode'];
    partyName = json['PartyName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PartyCode'] = partyCode;
    data['PartyName'] = partyName;
    return data;
  }
}