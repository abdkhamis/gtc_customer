import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/ui/pages/drawer/presentation/pages/drawer.dart';
import 'package:gtc_customer/ui/widgets/logo_widget.dart';
import 'core/constants/images_app.dart';
import 'core/constants/sizes_app.dart';
import 'ui/pages/drawer/presentation/controllers/drawer_controller.dart';
import 'package:gtc_customer/ui/widgets/logo_widget.dart';

class HomePage extends GetView<MyDrawerController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.drawerkey, //(TODO : TEAN MEMBERS)
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            controller.drawerkey.currentState!
                .openDrawer(); // (TODO : TEAN MEMBERS)
          },
          icon: SvgPicture.asset(
            ImagesApp.menubar,
            width: SizesApp.r23,
            height: SizesApp.r23,
          ),
        ),
        title: const Text('Fast eat'),
      ),

      drawer: const MyDrawer(),

      body: const Center(
        child: LogoWidget(),
      ),
    );
  }
}
