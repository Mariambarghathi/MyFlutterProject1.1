import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:intern/core/services/navigation/navigation_service.dart';
import 'package:intern/locator.dart';
import 'package:intern/ui/router.gr.dart';
import 'package:intern/ui/views/user/main/vendor_list_view.dart';
import 'package:intern/ui/widgets/stateful/vendor/viewmodel.dart';
import 'package:intern/ui/widgets/stateless/app_bar.dart';
import 'package:stacked/stacked.dart';
import '../../../../core/models/vendors/vendor.dart';
import '../../../widgets/stateful/drawer/customer_drawer_menu.dart';

@RoutePage()
class VendorCard extends StatefulWidget {
  Vendor? vendor;
  VendorCard({required this.vendor});

  @override
  _VendorCardState createState() => _VendorCardState();
}

class _VendorCardState extends State<VendorCard> {
  // LocationData? currentLocation;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VendorCardViewModel>.reactive(
      onViewModelReady: (model) async {
        await model.init(
          context, widget.vendor
        );
      },
      viewModelBuilder: () => VendorCardViewModel(),
      builder: (context, model, child) => model.isBusy
          ? const Center(child: CircularProgressIndicator())
     :InkWell(
        onTap: () async{

         await locator<NavigationService>()
              .pushNamed(VendorViewRoute(vendor: model.vendor));
        },
       child: Card(
       child: Text(model.vendor!.name?? 'undefined'),
        ),
     ),
    );
  }
}
