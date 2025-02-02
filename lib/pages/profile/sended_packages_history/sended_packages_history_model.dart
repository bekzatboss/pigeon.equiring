import '/components/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sended_packages_history_widget.dart' show SendedPackagesHistoryWidget;
import 'package:flutter/material.dart';

class SendedPackagesHistoryModel
    extends FlutterFlowModel<SendedPackagesHistoryWidget> {
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
