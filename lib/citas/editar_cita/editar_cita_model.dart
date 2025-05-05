import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_cita_widget.dart' show EditarCitaWidget;
import 'package:flutter/material.dart';

class EditarCitaModel extends FlutterFlowModel<EditarCitaWidget> {
  ///  Local state fields for this component.

  DocumentReference? vehiculoRefNuevo;

  DocumentReference? servicioRefNuevo;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDownVehiculo widget.
  String? dropDownVehiculoValue;
  FormFieldController<String>? dropDownVehiculoValueController;
  // State field(s) for DropDownServicioSeleccionado widget.
  String? dropDownServicioSeleccionadoValue;
  FormFieldController<String>? dropDownServicioSeleccionadoValueController;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
