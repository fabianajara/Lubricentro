import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'produtos_c_r_u_d_widget.dart' show ProdutosCRUDWidget;
import 'package:flutter/material.dart';

class ProdutosCRUDModel extends FlutterFlowModel<ProdutosCRUDWidget> {
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
  // State field(s) for TextFieldPrecio widget.
  FocusNode? textFieldPrecioFocusNode;
  TextEditingController? textFieldPrecioTextController;
  String? Function(BuildContext, String?)?
      textFieldPrecioTextControllerValidator;
  // State field(s) for DropDownCategoria widget.
  String? dropDownCategoriaValue;
  FormFieldController<String>? dropDownCategoriaValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDownCategoria widget.
  CategoriasRecord? queryCategoria;
  // State field(s) for TextFieldStock widget.
  FocusNode? textFieldStockFocusNode;
  TextEditingController? textFieldStockTextController;
  String? Function(BuildContext, String?)?
      textFieldStockTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldNombreFocusNode?.dispose();
    textFieldNombreTextController?.dispose();

    textFieldDescripcionFocusNode?.dispose();
    textFieldDescripcionTextController?.dispose();

    textFieldPrecioFocusNode?.dispose();
    textFieldPrecioTextController?.dispose();

    textFieldStockFocusNode?.dispose();
    textFieldStockTextController?.dispose();
  }
}
