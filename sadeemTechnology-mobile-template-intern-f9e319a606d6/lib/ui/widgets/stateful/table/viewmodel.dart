import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/models/vendors/vendor.dart';

class TableCardViewModel extends BaseViewModel {
  BuildContext? context;
Table? table;

  Future<void> init(
      BuildContext context, vendor
      ) async {
    this.context = context;
    this.table = table;
    setBusy(true);

    setBusy(false);
  }
}