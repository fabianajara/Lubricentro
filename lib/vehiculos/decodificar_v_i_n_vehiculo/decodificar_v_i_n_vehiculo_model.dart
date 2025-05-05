import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'decodificar_v_i_n_vehiculo_widget.dart'
    show DecodificarVINVehiculoWidget;
import 'package:flutter/material.dart';

class DecodificarVINVehiculoModel
    extends FlutterFlowModel<DecodificarVINVehiculoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (VIN Decoder)] action in Button widget.
  ApiCallResponse? apiResulthcq;
  // State field(s) for TextFieldMarca widget.
  FocusNode? textFieldMarcaFocusNode;
  TextEditingController? textFieldMarcaTextController;
  String? Function(BuildContext, String?)?
      textFieldMarcaTextControllerValidator;
  // State field(s) for TextFieldModelo widget.
  FocusNode? textFieldModeloFocusNode;
  TextEditingController? textFieldModeloTextController;
  String? Function(BuildContext, String?)?
      textFieldModeloTextControllerValidator;
  // State field(s) for TextFieldAnio widget.
  FocusNode? textFieldAnioFocusNode;
  TextEditingController? textFieldAnioTextController;
  String? Function(BuildContext, String?)? textFieldAnioTextControllerValidator;
  // State field(s) for TextFieldTipo widget.
  FocusNode? textFieldTipoFocusNode;
  TextEditingController? textFieldTipoTextController;
  String? Function(BuildContext, String?)? textFieldTipoTextControllerValidator;
  // State field(s) for TextFieldPlaca widget.
  FocusNode? textFieldPlacaFocusNode;
  TextEditingController? textFieldPlacaTextController;
  String? Function(BuildContext, String?)?
      textFieldPlacaTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UsersRecord? queryPropietario;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldMarcaFocusNode?.dispose();
    textFieldMarcaTextController?.dispose();

    textFieldModeloFocusNode?.dispose();
    textFieldModeloTextController?.dispose();

    textFieldAnioFocusNode?.dispose();
    textFieldAnioTextController?.dispose();

    textFieldTipoFocusNode?.dispose();
    textFieldTipoTextController?.dispose();

    textFieldPlacaFocusNode?.dispose();
    textFieldPlacaTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();
  }
}
