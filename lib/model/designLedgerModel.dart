class DesignLedgerModel {
  bool? status;
  String? message;
  int? records;
  List<Item>? items;

  DesignLedgerModel({this.status, this.message, this.records, this.items});

  DesignLedgerModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    message = json['Message'];
    records = json['Records'];
    if (json['Items'] != null) {
      items = <Item>[];
      json['Items'].forEach((v) {
        items!.add(new Item.fromJson(v));
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

class Item {
  String? dESIGNCODE;
  String? dESIGNNAME;
  String? vCHDATE;
  String? vCHNO;
  String? bILLNO;
  String? rEMARK;
  String? bOOKTYPE;
  String? pARTYCODE;
  String? pARTYNAME;
  int? iN;
  int? oUT;
  int? bAL;

  Item(
      {this.dESIGNCODE,
        this.dESIGNNAME,
        this.vCHDATE,
        this.vCHNO,
        this.bILLNO,
        this.rEMARK,
        this.bOOKTYPE,
        this.pARTYCODE,
        this.pARTYNAME,
        this.iN,
        this.oUT,
        this.bAL});

  Item.fromJson(Map<String, dynamic> json) {
    dESIGNCODE = json['DESIGNCODE'];
    dESIGNNAME = json['DESIGNNAME'];
    vCHDATE = json['VCHDATE'];
    vCHNO = json['VCHNO'];
    bILLNO = json['BILLNO'];
    rEMARK = json['REMARK'];
    bOOKTYPE = json['BOOKTYPE'];
    pARTYCODE = json['PARTYCODE'];
    pARTYNAME = json['PARTYNAME'];
    iN = json['IN'];
    oUT = json['OUT'];
    bAL = json['BAL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DESIGNCODE'] = this.dESIGNCODE;
    data['DESIGNNAME'] = this.dESIGNNAME;
    data['VCHDATE'] = this.vCHDATE;
    data['VCHNO'] = this.vCHNO;
    data['BILLNO'] = this.bILLNO;
    data['REMARK'] = this.rEMARK;
    data['BOOKTYPE'] = this.bOOKTYPE;
    data['PARTYCODE'] = this.pARTYCODE;
    data['PARTYNAME'] = this.pARTYNAME;
    data['IN'] = this.iN;
    data['OUT'] = this.oUT;
    data['BAL'] = this.bAL;
    return data;
  }
}