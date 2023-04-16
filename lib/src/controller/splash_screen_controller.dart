import 'package:get/get.dart';

import '../view/Homepage/home_page.dart';

class SplasScreenController extends GetxController{
	static SplasScreenController get find => Get.find();
	RxBool animate = false.obs;

	Future startAnimation() async{
		await Future.delayed(const Duration(milliseconds: 500));
		animate.value = true;
		await Future.delayed(const Duration(milliseconds: 5000));
		Get.to( HomePage());
	}
}