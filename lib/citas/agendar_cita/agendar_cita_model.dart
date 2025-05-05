import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'agendar_cita_widget.dart' show AgendarCitaWidget;
import 'package:flutter/material.dart';

class AgendarCitaModel extends FlutterFlowModel<AgendarCitaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for DropDownServicioSeleccionado widget.
  String? dropDownServicioSeleccionadoValue;
  FormFieldController<String>? dropDownServicioSeleccionadoValueController;
  // State field(s) for DropDownVehiculo widget.
  String? dropDownVehiculoValue;
  FormFieldController<String>? dropDownVehiculoValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
