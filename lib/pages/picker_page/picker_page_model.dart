import '/backend/backend.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bottombar/bottombar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'picker_page_widget.dart' show PickerPageWidget;
import 'package:flutter/material.dart';

class PickerPageModel extends FlutterFlowModel<PickerPageWidget> {
  ///  Local state fields for this page.

  List<String> namesList = [];
  void addToNamesList(String item) => namesList.add(item);
  void removeFromNamesList(String item) => namesList.remove(item);
  void removeAtIndexFromNamesList(int index) => namesList.removeAt(index);
  void insertAtIndexInNamesList(int index, String item) =>
      namesList.insert(index, item);
  void updateNamesListAtIndex(int index, Function(String) updateFn) =>
      namesList[index] = updateFn(namesList[index]);

  List<DocumentReference> refList = [];
  void addToRefList(DocumentReference item) => refList.add(item);
  void removeFromRefList(DocumentReference item) => refList.remove(item);
  void removeAtIndexFromRefList(int index) => refList.removeAt(index);
  void insertAtIndexInRefList(int index, DocumentReference item) =>
      refList.insert(index, item);
  void updateRefListAtIndex(int index, Function(DocumentReference) updateFn) =>
      refList[index] = updateFn(refList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for DropDownDeparture widget.
  String? dropDownDepartureValue;
  FormFieldController<String>? dropDownDepartureValueController;
  // State field(s) for DropDownDestination widget.
  String? dropDownDestinationValue;
  FormFieldController<String>? dropDownDestinationValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? queryChats;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? createChat;
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
