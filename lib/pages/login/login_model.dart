import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emSU widget.
  FocusNode? emSUFocusNode;
  TextEditingController? emSUTextController;
  String? Function(BuildContext, String?)? emSUTextControllerValidator;
  String? _emSUTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... Is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Must be a valid email';
    }
    return null;
  }

  // State field(s) for pwSU widget.
  FocusNode? pwSUFocusNode;
  TextEditingController? pwSUTextController;
  late bool pwSUVisibility;
  String? Function(BuildContext, String?)? pwSUTextControllerValidator;
  String? _pwSUTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 8) {
      return 'Password must be 8 characters long';
    }

    return null;
  }

  // State field(s) for pwcSU widget.
  FocusNode? pwcSUFocusNode;
  TextEditingController? pwcSUTextController;
  late bool pwcSUVisibility;
  String? Function(BuildContext, String?)? pwcSUTextControllerValidator;
  // State field(s) for emLG widget.
  FocusNode? emLGFocusNode;
  TextEditingController? emLGTextController;
  String? Function(BuildContext, String?)? emLGTextControllerValidator;
  // State field(s) for pwLG widget.
  FocusNode? pwLGFocusNode;
  TextEditingController? pwLGTextController;
  late bool pwLGVisibility;
  String? Function(BuildContext, String?)? pwLGTextControllerValidator;

  @override
  void initState(BuildContext context) {
    emSUTextControllerValidator = _emSUTextControllerValidator;
    pwSUVisibility = false;
    pwSUTextControllerValidator = _pwSUTextControllerValidator;
    pwcSUVisibility = false;
    pwLGVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emSUFocusNode?.dispose();
    emSUTextController?.dispose();

    pwSUFocusNode?.dispose();
    pwSUTextController?.dispose();

    pwcSUFocusNode?.dispose();
    pwcSUTextController?.dispose();

    emLGFocusNode?.dispose();
    emLGTextController?.dispose();

    pwLGFocusNode?.dispose();
    pwLGTextController?.dispose();
  }
}
