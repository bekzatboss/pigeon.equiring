import '/backend/backend.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bottombar/bottombar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sender_page_widget.dart' show SenderPageWidget;
import 'package:flutter/material.dart';

class SenderPageModel extends FlutterFlowModel<SenderPageWidget> {
  ///  Local state fields for this page.

  TypeRecord? choosenType;

  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;
  // State field(s) for DropDownType widget.
  String? dropDownTypeValue;
  FormFieldController<String>? dropDownTypeValueController;
  // State field(s) for DropDownDeparture widget.
  String? dropDownDepartureValue;
  FormFieldController<String>? dropDownDepartureValueController;
  // State field(s) for DropDownDestination widget.
  String? dropDownDestinationValue;
  FormFieldController<String>? dropDownDestinationValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? queryPackages;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PackageRecord? createdPackage;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UsersRecord>? queryUsersWhichReady;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? queryPicker;
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
