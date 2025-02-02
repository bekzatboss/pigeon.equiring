import '/backend/backend.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bottombar/bottombar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chats_page_widget.dart' show ChatsPageWidget;
import 'package:flutter/material.dart';

class ChatsPageModel extends FlutterFlowModel<ChatsPageWidget> {
  ///  Local state fields for this page.

  TypeRecord? choosenType;

  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;
  // Model for bottombar component.
  late BottombarModel bottombarModel;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    bottombarModel = createModel(context, () => BottombarModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    bottombarModel.dispose();
  }
}
