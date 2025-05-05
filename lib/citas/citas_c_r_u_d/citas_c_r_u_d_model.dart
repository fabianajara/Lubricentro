import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'citas_c_r_u_d_widget.dart' show CitasCRUDWidget;
import 'package:flutter/material.dart';

class CitasCRUDModel extends FlutterFlowModel<CitasCRUDWidget> {
  ///  Local state fields for this page.

  int? idCategoria;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
