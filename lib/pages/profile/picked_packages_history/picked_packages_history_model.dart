import '/components/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'picked_packages_history_widget.dart' show PickedPackagesHistoryWidget;
import 'package:flutter/material.dart';

class PickedPackagesHistoryModel
    extends FlutterFlowModel<PickedPackagesHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
  }
}
