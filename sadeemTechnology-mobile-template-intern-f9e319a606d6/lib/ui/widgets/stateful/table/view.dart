import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:intern/core/services/navigation/navigation_service.dart';
import 'package:intern/generated/l10n.dart';
import 'package:intern/locator.dart';
import 'package:intern/ui/router.gr.dart';
import 'package:intern/ui/views/user/main/vendor_list_view.dart';
import 'package:intern/ui/widgets/stateful/vendor/viewmodel.dart';
import 'package:intern/ui/widgets/stateless/app_bar.dart';
import 'package:stacked/stacked.dart';
import '../../../../core/models/vendors/vendor.dart';
import '../../../widgets/stateful/drawer/customer_drawer_menu.dart';

@RoutePage()
class TableCard extends StatefulWidget {
  Vendor? vendor;
  TableCard({required this.vendor});

  @override
  _TableCardState createState() => _TableCardState();
}

class _TableCardState extends State<TableCard> {
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
          _showMenu();
        
 },
       child: Card(
       child: Text(model.vendor!.name?? 'undefined'),
        ),
     ),
    );

  }
  _showMenu() async{
   await showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState /*You can rename this!*/) {
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    title: Text("منيو",
                  style: TextStyle(color: Theme.of(context).colorScheme.primary),),),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,

                    children: [
                    ElevatedButton(onPressed: (){

                    }, child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("طلب"),
                    ),
                        style: ButtonStyle(
                            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Theme.of(context).colorScheme.primary)
                                )
                            )
                        ))

                  ],),
                );
              });
        });
  }
}
