import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'categorias_c_r_u_d_widget.dart' show CategoriasCRUDWidget;
import 'package:flutter/material.dart';

class CategoriasCRUDModel extends FlutterFlowModel<CategoriasCRUDWidget> {
  ///  Local state fields for this page.

  int? idCategoria;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for TextFieldNombre widget.
  FocusNode? textFieldNombreFocusNode;
  TextEditingController? textFieldNombreTextController;
  String? Function(BuildContext, String?)?
      textFieldNombreTextControllerValidator;
  // State field(s) for TextFieldDescripcion widget.
  FocusNode? textFieldDescripcionFocusNode;
  TextEditingController? textFieldDescripcionTextController;
  String? Function(BuildContext, String?)?
      textFieldDescripcionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldNombreFocusNode?.dispose();
    textFieldNombreTextController?.dispose();

    textFieldDescripcionFocusNode?.dispose();
    textFieldDescripcionTextController?.dispose();
  }
}
