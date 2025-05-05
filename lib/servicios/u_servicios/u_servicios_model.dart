import '/flutter_flow/flutter_flow_util.dart';
import 'u_servicios_widget.dart' show UServiciosWidget;
import 'package:flutter/material.dart';

class UServiciosModel extends FlutterFlowModel<UServiciosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
