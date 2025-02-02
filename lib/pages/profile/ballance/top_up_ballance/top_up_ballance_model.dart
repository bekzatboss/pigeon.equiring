import '/backend/backend.dart';
import '/components/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_up_ballance_widget.dart' show TopUpBallanceWidget;
import 'package:flutter/material.dart';

class TopUpBallanceModel extends FlutterFlowModel<TopUpBallanceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PaymentsRecord? createPayments;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
