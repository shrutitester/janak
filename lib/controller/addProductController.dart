import 'package:get/get.dart';
import '../model/brandModel.dart';
import '../model/categoryModel.dart';
import '../model/designLedgerModel.dart';
import '../model/designStockModel.dart';
import '../model/supplierModel.dart';
import '../repository/addProductManager.dart';
import '../utils/preferences.dart';

class AddProductController extends GetxController{
  final preferences = AppPreferences();
  List<Parties> parties = [];
  List<Brands> brands = [];
  List<DesignCategories> designCategories = [];
  List<Items> items = [];
  List<Items> model = [];
  List<Item> item = [];
  String? movement, design;

  @override
  void onInit() {
    getSupplier();
    getBrand();
    getCategory();
    // getDesignLedger('', '','');
    super.onInit();
  }

  getSupplier() async {
    SupplierModel data = await AddProductNetworkManager.getSupplier();
    parties.clear();
    if (data.parties != null) {
      parties.addAll(data.parties ?? []);
    }
    update();
  }

  getBrand() async {
    BrandModel data = await AddProductNetworkManager.getBrand();
    brands.clear();
    if (data.brands != null) {
      brands.addAll(data.brands ?? []);
    }
    update();
  }

  getCategory() async {
    CategoryModel data = await AddProductNetworkManager.getCategory();
    designCategories.clear();
    if (data.designCategories != null) {
      designCategories.addAll(data.designCategories ?? []);
    }
    update();
  }

  getDesignStock(String partyCode, String brandCode, String designCatCode, String designName, String fromDate, String toDate) async {
    DesignStockModel data = await AddProductNetworkManager.getDesignStock(partyCode, brandCode, designCatCode, designName, fromDate, toDate);
    items.clear();
    if (data.items != null) {
      items.addAll(data.items ?? []);
    }
    update();
  }

  getMovementAnalysis(String partyCode, String date, String date1, String percentage) async {
    DesignStockModel data = await AddProductNetworkManager.getMovementAnalysis(partyCode, date, date1, percentage);
    model.clear();
    if (data.items != null) {
      model.addAll(data.items ?? []);
      movement = data.message;
    }
    update();
  }

  getDesignLedger(String designCode, String fromDate, String toDate) async {
    DesignLedgerModel data = await AddProductNetworkManager.getDesignLedger(designCode, fromDate, toDate);
    item?.clear();
    if (data.items != null) {
      item?.addAll(data.items ?? []);
    }
    update();
  }

}