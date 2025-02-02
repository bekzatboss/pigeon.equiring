import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/appbar/appbar_widget.dart';
import '/components/bottombar/bottombar_widget.dart';
import '/components/check_finish/check_finish_widget.dart';
import '/components/check_package/check_package_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'picker_page_model.dart';
export 'picker_page_model.dart';

class PickerPageWidget extends StatefulWidget {
  const PickerPageWidget({super.key});

  @override
  State<PickerPageWidget> createState() => _PickerPageWidgetState();
}

class _PickerPageWidgetState extends State<PickerPageWidget> {
  late PickerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PickerPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PickerPage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: AppBar(
            backgroundColor: const Color(0xFF3A4148),
            automaticallyImplyLeading: false,
            actions: const [],
            centerTitle: true,
            toolbarHeight: 0.0,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.appbarModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: const Hero(
                  tag: 'appbar',
                  transitionOnUserGestures: true,
                  child: Material(
                    color: Colors.transparent,
                    child: AppbarWidget(
                      isBack: false,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: StreamBuilder<List<PackageRecord>>(
                  stream: queryPackageRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<PackageRecord> containerPackageRecordList =
                        snapshot.data!;

                    return Container(
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                25.0, 25.0, 25.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PICKER_Container_ozdyoem4_ON_TAP');
                                        logFirebaseEvent('Container_page_view');
                                        await _model.pageViewController
                                            ?.animateToPage(
                                          0,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color:
                                              _model.pageViewCurrentIndex == 0
                                                  ? FlutterFlowTheme.of(context)
                                                      .tertiary
                                                  : Colors.transparent,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(15.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(15.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'Доступные',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: _model
                                                                      .pageViewCurrentIndex ==
                                                                  0
                                                              ? Colors.white
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                            if (containerPackageRecordList
                                                .where((e) =>
                                                    (e.departure ==
                                                        valueOrDefault(
                                                            currentUserDocument
                                                                ?.choosendeparture,
                                                            '')) &&
                                                    (e.destination ==
                                                        valueOrDefault(
                                                            currentUserDocument
                                                                ?.choosendestination,
                                                            '')) &&
                                                    (e.status == 'pending') &&
                                                    (e.userRef !=
                                                        currentUserReference))
                                                .toList()
                                                .isNotEmpty)
                                              AuthUserStreamWidget(
                                                builder: (context) => Container(
                                                  width: 20.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      containerPackageRecordList
                                                          .where((e) =>
                                                              (e.departure ==
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.choosendeparture,
                                                                      '')) &&
                                                              (e.destination ==
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.choosendestination,
                                                                      '')) &&
                                                              (e.status ==
                                                                  'pending') &&
                                                              (e.userRef !=
                                                                  currentUserReference))
                                                          .toList()
                                                          .length
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ].divide(const SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PICKER_Container_gm3h8y2r_ON_TAP');
                                        logFirebaseEvent('Container_page_view');
                                        await _model.pageViewController
                                            ?.animateToPage(
                                          1,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color:
                                              _model.pageViewCurrentIndex == 1
                                                  ? FlutterFlowTheme.of(context)
                                                      .tertiary
                                                  : Colors.transparent,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(15.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(15.0),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'Выбранные',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: _model
                                                                      .pageViewCurrentIndex ==
                                                                  1
                                                              ? Colors.white
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                            if (containerPackageRecordList
                                                .where((e) =>
                                                    (e.status != 'pending') &&
                                                    (e.status != 'finished') &&
                                                    (e.pickerUserRef ==
                                                        currentUserReference))
                                                .toList()
                                                .isNotEmpty)
                                              Container(
                                                width: 20.0,
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    containerPackageRecordList
                                                        .where((e) =>
                                                            (e.status !=
                                                                'pending') &&
                                                            (e.status !=
                                                                'finished') &&
                                                            (e.pickerUserRef ==
                                                                currentUserReference))
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: Colors.white,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                          ].divide(const SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 200.0,
                              decoration: const BoxDecoration(),
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                child: PageView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  onPageChanged: (_) => safeSetState(() {}),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 25.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            StreamBuilder<List<CityRecord>>(
                                              stream: queryCityRecord(),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CityRecord>
                                                    containerCityRecordList =
                                                    snapshot.data!;

                                                return Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(15.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              child: const Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .planeDeparture,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  AuthUserStreamWidget(
                                                                builder: (context) =>
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                  controller: _model
                                                                          .dropDownDepartureValueController ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model.dropDownDepartureValue ??=
                                                                        valueOrDefault(
                                                                            currentUserDocument?.choosendeparture,
                                                                            ''),
                                                                  ),
                                                                  options: valueOrDefault(currentUserDocument?.choosendestination, '') !=
                                                                              ''
                                                                      ? containerCityRecordList
                                                                          .map((e) => e
                                                                              .title)
                                                                          .toList()
                                                                          .where((e) =>
                                                                              e !=
                                                                              valueOrDefault(
                                                                                  currentUserDocument
                                                                                      ?.choosendestination,
                                                                                  ''))
                                                                          .toList()
                                                                      : containerCityRecordList
                                                                          .map((e) =>
                                                                              e.title)
                                                                          .toList(),
                                                                  onChanged:
                                                                      (val) async {
                                                                    safeSetState(() =>
                                                                        _model.dropDownDepartureValue =
                                                                            val);
                                                                    logFirebaseEvent(
                                                                        'PICKER_DropDownDeparture_ON_FORM_WIDGET_');
                                                                    logFirebaseEvent(
                                                                        'DropDownDeparture_backend_call');

                                                                    await currentUserReference!
                                                                        .update(
                                                                            createUsersRecordData(
                                                                      choosendeparture:
                                                                          _model
                                                                              .dropDownDepartureValue,
                                                                    ));
                                                                  },
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 40.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                  hintText:
                                                                      'Откуда',
                                                                  icon: const Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 24.0,
                                                                  ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderWidth:
                                                                      0.0,
                                                                  borderRadius:
                                                                      5.0,
                                                                  margin: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isOverButton:
                                                                      false,
                                                                  isSearchable:
                                                                      false,
                                                                  isMultiSelect:
                                                                      false,
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              child: const Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .planeArrival,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  AuthUserStreamWidget(
                                                                builder: (context) =>
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                  controller: _model
                                                                          .dropDownDestinationValueController ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model.dropDownDestinationValue ??=
                                                                        valueOrDefault(
                                                                            currentUserDocument?.choosendestination,
                                                                            ''),
                                                                  ),
                                                                  options: valueOrDefault(currentUserDocument?.choosendeparture, '') !=
                                                                              ''
                                                                      ? containerCityRecordList
                                                                          .map((e) => e
                                                                              .title)
                                                                          .toList()
                                                                          .where((e) =>
                                                                              e !=
                                                                              valueOrDefault(
                                                                                  currentUserDocument
                                                                                      ?.choosendeparture,
                                                                                  ''))
                                                                          .toList()
                                                                      : containerCityRecordList
                                                                          .map((e) =>
                                                                              e.title)
                                                                          .toList(),
                                                                  onChanged:
                                                                      (val) async {
                                                                    safeSetState(() =>
                                                                        _model.dropDownDestinationValue =
                                                                            val);
                                                                    logFirebaseEvent(
                                                                        'PICKER_DropDownDestination_ON_FORM_WIDGE');
                                                                    logFirebaseEvent(
                                                                        'DropDownDestination_backend_call');

                                                                    await currentUserReference!
                                                                        .update(
                                                                            createUsersRecordData(
                                                                      choosendestination:
                                                                          _model
                                                                              .dropDownDestinationValue,
                                                                    ));
                                                                  },
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 40.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                  hintText:
                                                                      'Куда',
                                                                  icon: const Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 24.0,
                                                                  ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderWidth:
                                                                      0.0,
                                                                  borderRadius:
                                                                      5.0,
                                                                  margin: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isOverButton:
                                                                      false,
                                                                  isSearchable:
                                                                      false,
                                                                  isMultiSelect:
                                                                      false,
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 10.0)),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                            AuthUserStreamWidget(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'PICKER_PAGE_PAGE____BTN_ON_TAP');
                                                  if (valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.isReadyToPick,
                                                      false)) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await currentUserReference!
                                                        .update(
                                                            createUsersRecordData(
                                                      isReadyToPick: false,
                                                    ));
                                                  } else {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await currentUserReference!
                                                        .update(
                                                            createUsersRecordData(
                                                      isReadyToPick: true,
                                                    ));
                                                  }
                                                },
                                                text: valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.isReadyToPick,
                                                        false)
                                                    ? 'Перестать получать заявки'
                                                    : 'Готов забрать посылку',
                                                options: FFButtonOptions(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0xFF3A4148),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: Colors.white,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallFamily),
                                                          ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                              ),
                                            ),
                                            if ((containerPackageRecordList
                                                    .where((e) =>
                                                        (e.departure ==
                                                            valueOrDefault(
                                                                currentUserDocument
                                                                    ?.choosendeparture,
                                                                '')) &&
                                                        (e.destination ==
                                                            valueOrDefault(
                                                                currentUserDocument
                                                                    ?.choosendestination,
                                                                '')) &&
                                                        (e.status ==
                                                            'pending') &&
                                                        (e.userRef !=
                                                            currentUserReference))
                                                    .toList()
                                                    .isNotEmpty) &&
                                                valueOrDefault<bool>(
                                                    currentUserDocument
                                                        ?.isReadyToPick,
                                                    false))
                                              AuthUserStreamWidget(
                                                builder: (context) => Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(15.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Доступные посылки',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final package = containerPackageRecordList
                                                                  .where((e) =>
                                                                      (e.departure == valueOrDefault(currentUserDocument?.choosendeparture, '')) &&
                                                                      (e.destination ==
                                                                          valueOrDefault(
                                                                              currentUserDocument
                                                                                  ?.choosendestination,
                                                                              '')) &&
                                                                      (e.status ==
                                                                          'pending') &&
                                                                      (e.userRef !=
                                                                          currentUserReference))
                                                                  .toList()
                                                                  .sortedList(
                                                                      keyOf: (e) =>
                                                                          e.created!,
                                                                      desc: true)
                                                                  .toList();

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    package
                                                                        .length,
                                                                    (packageIndex) {
                                                                  final packageItem =
                                                                      package[
                                                                          packageIndex];
                                                                  return Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF3A4148),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 24.0,
                                                                                height: 24.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: FaIcon(
                                                                                    FontAwesomeIcons.box,
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Text(
                                                                                  packageItem.typeTitle,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Divider(
                                                                            height:
                                                                                1.0,
                                                                            thickness:
                                                                                1.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 24.0,
                                                                                height: 24.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: FaIcon(
                                                                                    FontAwesomeIcons.tenge,
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Text(
                                                                                  functions.returnWithComission(packageItem.typeCost),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Divider(
                                                                            height:
                                                                                1.0,
                                                                            thickness:
                                                                                1.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 24.0,
                                                                                height: 24.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.timer_sharp,
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Text(
                                                                                  dateTimeFormat(
                                                                                    "relative",
                                                                                    packageItem.created!,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('PICKER_Container_2idhi8e1_ON_TAP');
                                                                                logFirebaseEvent('Container_backend_call');

                                                                                await packageItem.reference.update(createPackageRecordData(
                                                                                  status: 'picked',
                                                                                  pickerUserRef: currentUserReference,
                                                                                ));
                                                                                logFirebaseEvent('Container_trigger_push_notification');
                                                                                triggerPushNotification(
                                                                                  notificationTitle: 'Мы нашли перевозчика',
                                                                                  notificationText: 'Вашу посылку скоро заберут',
                                                                                  notificationSound: 'default',
                                                                                  userRefs: [
                                                                                    packageItem.userRef!
                                                                                  ],
                                                                                  initialPageName: 'SenderPage',
                                                                                  parameterData: {},
                                                                                );
                                                                              },
                                                                              child: Container(
                                                                                width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                height: 40.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                ),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Выбрать',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide(const SizedBox(height: 5.0)),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }).divide(const SizedBox(
                                                                    height:
                                                                        10.0)),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 15.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ]
                                              .divide(const SizedBox(height: 15.0))
                                              .addToStart(
                                                  const SizedBox(height: 25.0))
                                              .addToEnd(const SizedBox(height: 25.0)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 25.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              decoration: const BoxDecoration(),
                                              child: Visibility(
                                                visible: containerPackageRecordList
                                                    .where((e) =>
                                                        (e.status !=
                                                            'pending') &&
                                                        (e.status !=
                                                            'finished') &&
                                                        (e.pickerUserRef ==
                                                            currentUserReference))
                                                    .toList()
                                                    .isNotEmpty,
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(15.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Выбранные посылки',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final package = containerPackageRecordList
                                                                  .where((e) =>
                                                                      (e.status != 'pending') &&
                                                                      (e.status !=
                                                                          'finished') &&
                                                                      (e.pickerUserRef ==
                                                                          currentUserReference))
                                                                  .toList()
                                                                  .sortedList(
                                                                      keyOf: (e) =>
                                                                          e.created!,
                                                                      desc: true)
                                                                  .toList();

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    package
                                                                        .length,
                                                                    (packageIndex) {
                                                                  final packageItem =
                                                                      package[
                                                                          packageIndex];
                                                                  return Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF3A4148),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 24.0,
                                                                                height: 24.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: FaIcon(
                                                                                    FontAwesomeIcons.box,
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Text(
                                                                                  packageItem.typeTitle,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Divider(
                                                                            height:
                                                                                1.0,
                                                                            thickness:
                                                                                1.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 24.0,
                                                                                height: 24.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: FaIcon(
                                                                                    FontAwesomeIcons.tenge,
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Text(
                                                                                  functions.returnWithComission(packageItem.typeCost),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Divider(
                                                                            height:
                                                                                1.0,
                                                                            thickness:
                                                                                1.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 24.0,
                                                                                height: 24.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.timer_sharp,
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Text(
                                                                                  dateTimeFormat(
                                                                                    "relative",
                                                                                    packageItem.created!,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('PICKER_PAGE_PAGE___BTN_ON_TAP');
                                                                                  logFirebaseEvent('Button_call_number');
                                                                                  await launchUrl(Uri(
                                                                                    scheme: 'tel',
                                                                                    path: packageItem.userPhone,
                                                                                  ));
                                                                                },
                                                                                text: 'Позвонить отправителю',
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: Colors.white,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('PICKER_PAGE_PAGE___BTN_ON_TAP');
                                                                                  logFirebaseEvent('Button_firestore_query');
                                                                                  _model.queryChats = await queryChatsRecordOnce(
                                                                                    queryBuilder: (chatsRecord) => chatsRecord.where(
                                                                                      'chatMembersRef',
                                                                                      arrayContains: currentUserReference,
                                                                                    ),
                                                                                  );
                                                                                  if (_model.queryChats!.where((e) => e.chatMembersRef.contains(packageItem.userRef)).toList().isNotEmpty) {
                                                                                    logFirebaseEvent('Button_navigate_to');

                                                                                    context.pushNamed(
                                                                                      'ChatsSinglePage',
                                                                                      queryParameters: {
                                                                                        'chatDoc': serializeParam(
                                                                                          _model.queryChats?.where((e) => e.chatMembersRef.contains(packageItem.userRef)).toList().firstOrNull,
                                                                                          ParamType.Document,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                      extra: <String, dynamic>{
                                                                                        'chatDoc': _model.queryChats?.where((e) => e.chatMembersRef.contains(packageItem.userRef)).toList().firstOrNull,
                                                                                      },
                                                                                    );
                                                                                  } else {
                                                                                    logFirebaseEvent('Button_update_page_state');
                                                                                    _model.addToNamesList(currentUserDisplayName);
                                                                                    _model.addToRefList(currentUserReference!);
                                                                                    safeSetState(() {});
                                                                                    logFirebaseEvent('Button_update_page_state');
                                                                                    _model.addToNamesList(packageItem.userName);
                                                                                    _model.addToRefList(packageItem.userRef!);
                                                                                    safeSetState(() {});
                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                    var chatsRecordReference = ChatsRecord.collection.doc();
                                                                                    await chatsRecordReference.set({
                                                                                      ...createChatsRecordData(
                                                                                        createdTime: getCurrentTimestamp,
                                                                                        lastActionTime: getCurrentTimestamp,
                                                                                        lastMessageText: 'Чат создан',
                                                                                      ),
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'chatMembersName': _model.namesList,
                                                                                          'chatMembersRef': _model.refList,
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    _model.createChat = ChatsRecord.getDocumentFromData({
                                                                                      ...createChatsRecordData(
                                                                                        createdTime: getCurrentTimestamp,
                                                                                        lastActionTime: getCurrentTimestamp,
                                                                                        lastMessageText: 'Чат создан',
                                                                                      ),
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'chatMembersName': _model.namesList,
                                                                                          'chatMembersRef': _model.refList,
                                                                                        },
                                                                                      ),
                                                                                    }, chatsRecordReference);
                                                                                    logFirebaseEvent('Button_update_page_state');
                                                                                    _model.namesList = [];
                                                                                    _model.refList = [];
                                                                                    safeSetState(() {});
                                                                                    logFirebaseEvent('Button_navigate_to');

                                                                                    context.pushNamed(
                                                                                      'ChatsSinglePage',
                                                                                      queryParameters: {
                                                                                        'chatDoc': serializeParam(
                                                                                          _model.createChat,
                                                                                          ParamType.Document,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                      extra: <String, dynamic>{
                                                                                        'chatDoc': _model.createChat,
                                                                                      },
                                                                                    );
                                                                                  }

                                                                                  logFirebaseEvent('Button_trigger_push_notification');
                                                                                  triggerPushNotification(
                                                                                    notificationTitle: 'У вас новое сообщение',
                                                                                    notificationText: 'Вам написали по поводу вашей посылки',
                                                                                    userRefs: [
                                                                                      packageItem.userRef!
                                                                                    ],
                                                                                    initialPageName: 'ChatsPage',
                                                                                    parameterData: {},
                                                                                  );

                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: 'Написать отправителю',
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: Colors.white,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              if ((packageItem.status == 'picked') || (packageItem.status == 'onair'))
                                                                                Builder(
                                                                                  builder: (context) => FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      logFirebaseEvent('PICKER_PAGE_PAGE___BTN_ON_TAP');
                                                                                      if (packageItem.status == 'picked') {
                                                                                        await Future.wait([
                                                                                          Future(() async {
                                                                                            logFirebaseEvent('Button_alert_dialog');
                                                                                            await showDialog(
                                                                                              barrierDismissible: false,
                                                                                              context: context,
                                                                                              builder: (dialogContext) {
                                                                                                return Dialog(
                                                                                                  elevation: 0,
                                                                                                  insetPadding: EdgeInsets.zero,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                  child: WebViewAware(
                                                                                                    child: GestureDetector(
                                                                                                      onTap: () {
                                                                                                        FocusScope.of(dialogContext).unfocus();
                                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                                      },
                                                                                                      child: SizedBox(
                                                                                                        height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                        child: CheckPackageWidget(
                                                                                                          docRef: packageItem.reference,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          }),
                                                                                          Future(() async {
                                                                                            logFirebaseEvent('Button_backend_call');

                                                                                            await packageItem.reference.update(createPackageRecordData(
                                                                                              status: 'check',
                                                                                            ));
                                                                                            logFirebaseEvent('Button_trigger_push_notification');
                                                                                            triggerPushNotification(
                                                                                              notificationTitle: 'Подтвердите действие',
                                                                                              notificationText: 'У вас действительно забрали посылку?',
                                                                                              notificationSound: 'default',
                                                                                              userRefs: [
                                                                                                packageItem.userRef!
                                                                                              ],
                                                                                              initialPageName: 'SenderPage',
                                                                                              parameterData: {},
                                                                                            );
                                                                                          }),
                                                                                        ]);
                                                                                      } else if (packageItem.status == 'onair') {
                                                                                        await Future.wait([
                                                                                          Future(() async {
                                                                                            logFirebaseEvent('Button_alert_dialog');
                                                                                            await showDialog(
                                                                                              barrierDismissible: false,
                                                                                              context: context,
                                                                                              builder: (dialogContext) {
                                                                                                return Dialog(
                                                                                                  elevation: 0,
                                                                                                  insetPadding: EdgeInsets.zero,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                  child: WebViewAware(
                                                                                                    child: GestureDetector(
                                                                                                      onTap: () {
                                                                                                        FocusScope.of(dialogContext).unfocus();
                                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                                      },
                                                                                                      child: SizedBox(
                                                                                                        height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                        child: CheckFinishWidget(
                                                                                                          docRef: packageItem.reference,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          }),
                                                                                          Future(() async {
                                                                                            logFirebaseEvent('Button_backend_call');

                                                                                            await packageItem.reference.update(createPackageRecordData(
                                                                                              status: 'checkfinish',
                                                                                            ));
                                                                                            logFirebaseEvent('Button_trigger_push_notification');
                                                                                            triggerPushNotification(
                                                                                              notificationTitle: 'Подтвердите действие',
                                                                                              notificationText: 'Посылку действительно доставили?',
                                                                                              notificationSound: 'default',
                                                                                              userRefs: [
                                                                                                packageItem.userRef!
                                                                                              ],
                                                                                              initialPageName: 'SenderPage',
                                                                                              parameterData: {},
                                                                                            );
                                                                                          }),
                                                                                        ]);
                                                                                      } else {
                                                                                        logFirebaseEvent('Button_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: const Text(
                                                                                              'Error',
                                                                                              style: TextStyle(
                                                                                                color: Colors.white,
                                                                                              ),
                                                                                            ),
                                                                                            duration: const Duration(milliseconds: 1000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                    },
                                                                                    text: () {
                                                                                      if (packageItem.status == 'picked') {
                                                                                        return 'Я забрал(а) посылку';
                                                                                      } else if (packageItem.status == 'onair') {
                                                                                        return 'Я завершил(а) передачу';
                                                                                      } else {
                                                                                        return 'Ошибка';
                                                                                      }
                                                                                    }(),
                                                                                    options: FFButtonOptions(
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 40.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).success,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 14.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                          ),
                                                                                      elevation: 0.0,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if ((packageItem.status != 'onair') && (packageItem.status != 'check') && (packageItem.status != 'checkfinish') && (packageItem.status != 'finish'))
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('PICKER_PAGE_PAGE__BTN_ON_TAP');
                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                    await packageItem.reference.update({
                                                                                      ...createPackageRecordData(
                                                                                        status: 'pending',
                                                                                      ),
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'pickerUserRef': FieldValue.delete(),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  },
                                                                                  text: 'Отказаться',
                                                                                  options: FFButtonOptions(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                        ),
                                                                                    elevation: 0.0,
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                            ].divide(const SizedBox(height: 5.0)),
                                                                          ),
                                                                        ].divide(const SizedBox(height: 5.0)),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }).divide(const SizedBox(
                                                                    height:
                                                                        10.0)),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 15.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 15.0))
                                              .addToStart(
                                                  const SizedBox(height: 25.0))
                                              .addToEnd(const SizedBox(height: 25.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              wrapWithModel(
                model: _model.bottombarModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: const Hero(
                  tag: 'bottombar',
                  transitionOnUserGestures: true,
                  child: Material(
                    color: Colors.transparent,
                    child: BottombarWidget(
                      page: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
