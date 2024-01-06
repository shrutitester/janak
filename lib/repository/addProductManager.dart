import 'package:basket_ball/model/designStockModel.dart';
import 'package:basket_ball/model/supplierModel.dart';

import '../constants/stringConstants.dart';
import '../model/brandModel.dart';
import '../model/categoryModel.dart';
import '../model/designLedgerModel.dart';
import '../utils/apiHelper.dart';

class AddProductNetworkManager {
  static Future<SupplierModel> getSupplier() async {
    SupplierModel? supplierModel;
    Map<String, dynamic> returnMap = await ApiHelper.hitApi(
      api: 'stock/listsupplier',
      callType: StringConstants.postCall,
    );
    if (returnMap.containsKey('exception')) {
      supplierModel = SupplierModel();
      supplierModel.status = false;
      supplierModel.message = returnMap['exception'];
      return supplierModel;
    } else if (returnMap.containsKey('statusCode')) {
      supplierModel = SupplierModel();
      supplierModel.status = false;
      supplierModel.message = returnMap['error'];
      return supplierModel;
    } else {
      supplierModel = SupplierModel.fromJson(returnMap['body']);
      return supplierModel;
    }
  }

  static Future<BrandModel> getBrand() async {
    BrandModel? brandModel;
    Map<String, dynamic> returnMap = await ApiHelper.hitApi(
      api: 'stock/listbrands',
      callType: StringConstants.postCall,
    );
    if (returnMap.containsKey('exception')) {
      brandModel = BrandModel();
      brandModel.status = false;
      brandModel.message = returnMap['exception'];
      return brandModel;
    } else if (returnMap.containsKey('statusCode')) {
      brandModel = BrandModel();
      brandModel.status = false;
      brandModel.message = returnMap['error'];
      return brandModel;
    } else {
      brandModel = BrandModel.fromJson(returnMap['body']);
      return brandModel;
    }
  }

  static Future<CategoryModel> getCategory() async {
    CategoryModel? categoryModel;
    Map<String, dynamic> returnMap = await ApiHelper.hitApi(
      api: 'stock/listdesigncategories',
      callType: StringConstants.postCall,
    );
    if (returnMap.containsKey('exception')) {
      categoryModel = CategoryModel();
      categoryModel.status = false;
      categoryModel.message = returnMap['exception'];
      return categoryModel;
    } else if (returnMap.containsKey('statusCode')) {
      categoryModel = CategoryModel();
      categoryModel.status = false;
      categoryModel.message = returnMap['error'];
      return categoryModel;
    } else {
      categoryModel = CategoryModel.fromJson(returnMap['body']);
      return categoryModel;
    }
  }

  static Future<DesignStockModel> getDesignStock(
      String partyCode,
      String brandCode,
      String designCatCode,
      String designName,
      String fromDate,
      String toDate) async {
    DesignStockModel? designStockModel;
    Map<String, dynamic> bodyMap = {
      'partyCode': partyCode,
      'brandCode': brandCode,
      'designCatCode': designCatCode,
      'designName': designName,
      'fromDate': fromDate,
      'toDate': toDate
    };
    Map<String, dynamic> returnMap = await ApiHelper.hitApi(
        api: 'stock/stock',
        callType: StringConstants.postCall,
        fieldsMap: bodyMap);
    if (returnMap.containsKey('exception')) {
      designStockModel = DesignStockModel();
      designStockModel.status = false;
      designStockModel.message = returnMap['exception'];
      return designStockModel;
    } else if (returnMap.containsKey('statusCode')) {
      designStockModel = DesignStockModel();
      designStockModel.status = false;
      designStockModel.message = returnMap['error'];
      return designStockModel;
    } else {
      designStockModel = DesignStockModel.fromJson(returnMap['body']);
      return designStockModel;
    }
  }

  static Future<DesignStockModel> getMovementAnalysis(
      String partyCode,
      String fromDate,
      String toDate,
      String percentage) async {
    DesignStockModel? designStockModel;
    Map<String, dynamic> bodyMap = {
      'partyCode': partyCode,
      'fromDate': fromDate,
      'toDate': toDate,
      'percentage': percentage
    };
    Map<String, dynamic> returnMap = await ApiHelper.hitApi(
        api: 'stock/showMoving',
        callType: StringConstants.postCall,
        fieldsMap: bodyMap);
    if (returnMap.containsKey('exception')) {
      designStockModel = DesignStockModel();
      designStockModel.status = false;
      designStockModel.message = returnMap['exception'];
      return designStockModel;
    } else if (returnMap.containsKey('statusCode')) {
      designStockModel = DesignStockModel();
      designStockModel.status = false;
      designStockModel.message = returnMap['error'];
      return designStockModel;
    } else {
      designStockModel = DesignStockModel.fromJson(returnMap['body']);
      return designStockModel;
    }
  }

  static Future<DesignLedgerModel> getDesignLedger(
      String designCode,
      String fromDate,
      String toDate) async {
    DesignLedgerModel? designLedgerModel;
    Map<String, dynamic> bodyMap = {
      'designCode': designCode,
      'fromDate': fromDate,
      'toDate': toDate
    };
    Map<String, dynamic> returnMap = await ApiHelper.hitApi(
        api: 'stock/stockledger',
        callType: StringConstants.postCall,
        fieldsMap: bodyMap);
    if (returnMap.containsKey('exception')) {
      designLedgerModel = DesignLedgerModel();
      designLedgerModel.status = false;
      designLedgerModel.message = returnMap['exception'];
      return designLedgerModel;
    } else if (returnMap.containsKey('statusCode')) {
      designLedgerModel = DesignLedgerModel();
      designLedgerModel.status = false;
      designLedgerModel.message = returnMap['error'];
      return designLedgerModel;
    } else {
      designLedgerModel = DesignLedgerModel.fromJson(returnMap['body']);
      return designLedgerModel;
    }
  }

}
