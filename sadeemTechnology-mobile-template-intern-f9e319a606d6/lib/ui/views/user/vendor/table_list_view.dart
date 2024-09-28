import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intern/core/constant/constants.dart';
import 'package:intern/core/constant/end_point_parameters.dart';
import 'package:intern/core/models/vendors/vendor.dart';
import 'package:intern/ui/views/user/main/main_view_model.dart';
import 'package:intern/ui/widgets/stateful/vendor/view.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/constant/api_routes.dart';
import '../../../../core/enums/http_request_type.dart';
import '../../../../core/repositories/magical_repository.dart';
import '../../../../locator.dart';

class TableListView extends StatefulWidget {
  Map<String, dynamic> parameters;
  TableListView({required this.parameters});
  @override
  _TableListViewState createState() => _TableListViewState();
}

class _TableListViewState extends State<TableListView> {
  final _PagingController=
  PagingController<int, Vendor>(firstPageKey: 1);

  @override
  void initState() {
    _PagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
var parameters = widget.parameters;
parameters[EndPointParameter.page]= pageKey.toString();
parameters[EndPointParameter.sorts]= Constants.DEFAULT_SORTS;
//var vendor_items= (await locator <MagicalRepository>().handelRequest<Vendor>(
  //  model:Vendor(),
    //specific_key: EndPointParameter.DATA,
   // parameters: parameters,
    //methodType: HTTPMethodType.GET,
    //route: ApiRoutes.vendors))
    //.cast<Vendor>();
//_PagingController.appendLastPage(vendor_items);
  }

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<MainViewModel>.reactive(
        viewModelBuilder: () => MainViewModel(),
        onViewModelReady: (viewModel) async{
         await viewModel.init(context);
        },
        builder: (BuildContext context, MainViewModel viewModel,
            Widget? child) {
          return
              PagedListView<int, Vendor>.separated(
                pagingController: _PagingController,
                builderDelegate: PagedChildBuilderDelegate<Vendor>(
                  itemBuilder: (context, item, index) => Container(
                    child: VendorCard(vendor: item,
                      ),
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(),
              );
        },);

}