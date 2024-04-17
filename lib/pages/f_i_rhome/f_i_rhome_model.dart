import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'f_i_rhome_widget.dart' show FIRhomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FIRhomeModel extends FlutterFlowModel<FIRhomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for FIRcontents widget.
  FocusNode? fIRcontentsFocusNode;
  TextEditingController? fIRcontentsController;
  String? Function(BuildContext, String?)? fIRcontentsControllerValidator;
  // State field(s) for SummaryFIR widget.
  FocusNode? summaryFIRFocusNode;
  TextEditingController? summaryFIRController;
  String? Function(BuildContext, String?)? summaryFIRControllerValidator;
  // State field(s) for SecAndActs widget.
  FocusNode? secAndActsFocusNode;
  TextEditingController? secAndActsController;
  String? Function(BuildContext, String?)? secAndActsControllerValidator;
  // State field(s) for DetailsOfFIR widget.
  FocusNode? detailsOfFIRFocusNode;
  TextEditingController? detailsOfFIRController;
  String? Function(BuildContext, String?)? detailsOfFIRControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    fIRcontentsFocusNode?.dispose();
    fIRcontentsController?.dispose();

    summaryFIRFocusNode?.dispose();
    summaryFIRController?.dispose();

    secAndActsFocusNode?.dispose();
    secAndActsController?.dispose();

    detailsOfFIRFocusNode?.dispose();
    detailsOfFIRController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
