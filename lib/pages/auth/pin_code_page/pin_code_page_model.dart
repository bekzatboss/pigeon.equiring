import '/flutter_flow/flutter_flow_util.dart';
import 'pin_code_page_widget.dart' show PinCodePageWidget;
import 'package:flutter/material.dart';

class PinCodePageModel extends FlutterFlowModel<PinCodePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
