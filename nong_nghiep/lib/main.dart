import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nong_nghiep/auth/auth.dart';
import 'package:nong_nghiep/auth/authbinding.dart';
import 'package:nong_nghiep/cart/cart.dart';
import 'package:nong_nghiep/cart/cartbinding.dart';
import 'package:nong_nghiep/censorship/censorship.dart';
import 'package:nong_nghiep/censorship/censorshipbinding.dart';
import 'package:nong_nghiep/dashboard/dashboard.dart';
import 'package:nong_nghiep/dashboard/dashboardbinding.dart';
import 'package:nong_nghiep/notifications/notifications.dart';
import 'package:nong_nghiep/products/products_page.dart';
import 'package:nong_nghiep/qrcode/qrcode.dart';
import 'package:nong_nghiep/qrcode/qrcodebinding.dart';
import 'package:nong_nghiep/scientist/scientist.dart';
import 'package:nong_nghiep/scientist/scientistbinding.dart';
import 'package:nong_nghiep/search/search.dart';
import 'package:nong_nghiep/search/searchbinding.dart';
import 'package:nong_nghiep/seedling/seedling_page.dart';
import 'package:nong_nghiep/voucher/voucher.dart';
import 'package:nong_nghiep/voucher/voucherbinding.dart';
import 'package:nong_nghiep/wallet/wallet.dart';
import 'package:nong_nghiep/wallet/walletbinding.dart';
import 'package:nong_nghiep/weather/detail_weather.dart';

void main() async{
  await GetStorage.init(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
      initialBinding: AuthBingding(),
      initialRoute: '/',
      getPages: [
        GetPage( name: '/search', page: () => const Search(), binding: SearchBinding()),
        GetPage( name: '/cart', page: () => const Cart(),binding: CartBinding()),
        GetPage( name: '/notifications', page: () => const Notifications()),
        GetPage(name: '/voucher', page: () => const Voucher(),binding: VoucherBinding()),
        GetPage(name: '/wallet', page: () => const Wallet(),binding: WalletBinding()),
        GetPage(name: '/qrcode', page: () => const QRCode(),binding: QRCodeBinding()),
        GetPage(name: '/seedling', page: () => const SeedlingPage()),
        GetPage(name: '/scientist', page: () => const Scientist(),binding: ScientistBinding()),
        GetPage(name: '/censorship', page: () => const Censorship(),binding: CensorshipBinding()),
        GetPage(name: '/dashboard', page: () => const Dashboard(),binding: DashboardBinding()),
        GetPage(name: '/product', page: () => const ProductPage()),
        GetPage(name: '/weather', page: () => const DetailWeather()),
      ],
    );
  }
}
