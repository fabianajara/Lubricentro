import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'u_mostrar_productos_widget.dart' show UMostrarProductosWidget;
import 'package:flutter/material.dart';

class UMostrarProductosModel extends FlutterFlowModel<UMostrarProductosWidget> {
  ///  Local state fields for this page.

  String? filtroName;

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
