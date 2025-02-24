import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for namefield widget.
  FocusNode? namefieldFocusNode;
  TextEditingController? namefieldTextController;
  String? Function(BuildContext, String?)? namefieldTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for hometownentry widget.
  FocusNode? hometownentryFocusNode;
  TextEditingController? hometownentryTextController;
  String? Function(BuildContext, String?)? hometownentryTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    namefieldFocusNode?.dispose();
    namefieldTextController?.dispose();

    hometownentryFocusNode?.dispose();
    hometownentryTextController?.dispose();
  }
}
