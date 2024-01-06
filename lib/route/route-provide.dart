import 'package:basket_ball/widgets/account/ledger.dart';
import 'package:basket_ball/widgets/splashScreen.dart';
import 'package:basket_ball/widgets/stockStatusScreen.dart';
import 'package:flutter/material.dart';
import '../widgets/movementAnalysisScreen.dart';
import '../widgets/product/productDetailsScreen.dart';
import '../widgets/product/productGalleryScreen.dart';
import '../widgets/orderByBar/subOrderBookingScreen.dart';
import '../widgets/supplierDesignScreen.dart';
import '../widgets/userDetails/userDetails.dart';
import '../widgets/vendor/vendorList.dart';

class RoutesProvider {
  static Route<dynamic> provideRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesLinks.splashPage:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesLinks.stockStatus:
        return MaterialPageRoute(
            builder: (context) => const StockStatusScreen());
      case RoutesLinks.stockLedger:
        return MaterialPageRoute(
            builder: (context) => const SubOrderBookingScreen());
      case RoutesLinks.stockAnalysis:
        return MaterialPageRoute(
            builder: (context) => const MovementAnalysisScreen());
      case RoutesLinks.vendor:
        return MaterialPageRoute(builder: (context) => const VendorScreen());
      case RoutesLinks.ledger:
        return MaterialPageRoute(builder: (context) => const Ledger());
      case RoutesLinks.supplierDesignScreen:
        return MaterialPageRoute(
            builder: (context) => const SupplierDesignScreen());
      case RoutesLinks.productGallery:
        return MaterialPageRoute(
            builder: (context) => const ProductGalleryScreen());
      case RoutesLinks.productDetails:
        return MaterialPageRoute(
            builder: (context) => const ProductDetailsScreen());
      case RoutesLinks.productUpload:
        return MaterialPageRoute(
            builder: (context) => const ProductDetailsScreen());
      case RoutesLinks.productStatus:
        return MaterialPageRoute(
            builder: (context) => const SupplierDesignScreen());
      case RoutesLinks.products:
        return MaterialPageRoute(
            builder: (context) => const SupplierDesignScreen());
      case RoutesLinks.userDetails:
        return MaterialPageRoute(
            builder: (context) => const UserDetailsScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

class RoutesLinks {
  static const String splashPage = 'splash';
  static const String loginPage = 'login';
  static const String salesOrder = 'salesOrder';
  static const String orderViaBarcode = 'orderViaBarcode';
  static const String vendor = 'vendor';
  static const String account = 'account';
  static const String stockMovement = 'stockMovement';
  static const String adminPanel = 'adminPanel';
  static const String stockStatus = 'stockStatus';
  static const String stockLedger = 'stockLedger';
  static const String stockAnalysis = 'stockAnalysis';
  static const String reorderLevel = 'reorderLevel';
  static const String ledger = 'ledger';
  static const String supplierDesignScreen = 'supplierDesignScreen';
  static const String productGallery = 'productGallery';
  static const String productDetails = 'productDetails';
  static const String productUpload = 'productUpload';
  static const String productStatus = 'productStatus';
  static const String products = 'products';
  static const String userDetails = 'userDetails';
}
