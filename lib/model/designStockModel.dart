class DesignStockModel {
  bool? status;
  String? message;
  int? records;
  List<Items>? items;

  DesignStockModel({this.status, this.message, this.records, this.items});

  DesignStockModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    message = json['Message'];
    records = json['Records'];
    if (json['Items'] != null) {
      items = <Items>[];
      json['Items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['Message'] = this.message;
    data['Records'] = this.records;
    if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? dESIGNCODE;
  String? dESIGNNAME;
  String? sIZECODE;
  String? sIZENAME;
  String? dESIGNCATCODE;
  String? dESIGNCATNAME;
  String? bRANDCODE;
  String? bRANDNAME;
  String? pARTYCODE;
  String? pARTYNAME;
  int? oP;
  int? iN;
  int? oUT;
  int? bAL;
  int? pURC;
  int? pRRT;
  int? sALE;
  int? sLRT;

  Items(
      {this.dESIGNCODE,
        this.dESIGNNAME,
        this.sIZECODE,
        this.sIZENAME,
        this.dESIGNCATCODE,
        this.dESIGNCATNAME,
        this.bRANDCODE,
        this.bRANDNAME,
        this.pARTYCODE,
        this.pARTYNAME,
        this.oP,
        this.iN,
        this.oUT,
        this.bAL,
        this.pURC,
        this.pRRT,
        this.sALE,
        this.sLRT});

  Items.fromJson(Map<String, dynamic> json) {
    dESIGNCODE = json['DESIGNCODE'];
    dESIGNNAME = json['DESIGNNAME'];
    sIZECODE = json['SIZECODE'];
    sIZENAME = json['SIZENAME'];
    dESIGNCATCODE = json['DESIGNCATCODE'];
    dESIGNCATNAME = json['DESIGNCATNAME'];
    bRANDCODE = json['BRANDCODE'];
    bRANDNAME = json['BRANDNAME'];
    pARTYCODE = json['PARTYCODE'];
    pARTYNAME = json['PARTYNAME'];
    oP = json['OP'];
    iN = json['IN'];
    oUT = json['OUT'];
    bAL = json['BAL'];
    pURC = json['PURC'];
    pRRT = json['PRRT'];
    sALE = json['SALE'];
    sLRT = json['SLRT'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DESIGNCODE'] = this.dESIGNCODE;
    data['DESIGNNAME'] = this.dESIGNNAME;
    data['SIZECODE'] = this.sIZECODE;
    data['SIZENAME'] = this.sIZENAME;
    data['DESIGNCATCODE'] = this.dESIGNCATCODE;
    data['DESIGNCATNAME'] = this.dESIGNCATNAME;
    data['BRANDCODE'] = this.bRANDCODE;
    data['BRANDNAME'] = this.bRANDNAME;
    data['PARTYCODE'] = this.pARTYCODE;
    data['PARTYNAME'] = this.pARTYNAME;
    data['OP'] = this.oP;
    data['IN'] = this.iN;
    data['OUT'] = this.oUT;
    data['BAL'] = this.bAL;
    data['PURC'] = this.pURC;
    data['PRRT'] = this.pRRT;
    data['SALE'] = this.sALE;
    data['SLRT'] = this.sLRT;
    return data;
  }
}