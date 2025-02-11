import '/flutter_flow/flutter_flow_util.dart';
import 'details_widget.dart' show DetailsWidget;
import 'package:flutter/material.dart';

class DetailsModel extends FlutterFlowModel<DetailsWidget> {
  ///  Local state fields for this page.

  bool editmode = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldT widget.
  FocusNode? textFieldTFocusNode;
  TextEditingController? textFieldTTextController;
  String? Function(BuildContext, String?)? textFieldTTextControllerValidator;
  // State field(s) for TextFieldD widget.
  FocusNode? textFieldDFocusNode;
  TextEditingController? textFieldDTextController;
  String? Function(BuildContext, String?)? textFieldDTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldTFocusNode?.dispose();
    textFieldTTextController?.dispose();

    textFieldDFocusNode?.dispose();
    textFieldDTextController?.dispose();
  }
}
