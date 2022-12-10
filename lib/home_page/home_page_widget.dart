import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/lat_lng.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  bool? switchListTileValue3;
  bool? switchListTileValue4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
          child: Text(
            'ISETJ GEO',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                  child: FlutterFlowStaticMap(
                    location: LatLng(36.50631149326669, 8.758948352282165),
                    apiKey:
                        'pk.eyJ1Ijoic3BpcmF0biIsImEiOiJjbGI3dm4wOWowZjBrM29xaHNpdnc3Yzc2In0.cRArV-zqKcbfmtaqUxfLnw',
                    style: MapBoxStyle.Satellite_V9,
                    width: 400,
                    height: 500,
                    fit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(0),
                    zoom: 17,
                    tilt: 0,
                    rotation: 0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(300, 320, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('This should be your initial Location'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Icon(
                    Icons.person_pin_circle,
                    color: Color(0xFFB90404),
                    size: 24,
                  ),
                ),
              ),
              SwitchListTile(
                value: switchListTileValue1 ??= false,
                onChanged: (newValue) async {
                  setState(() => switchListTileValue1 = newValue!);
                },
                title: Text(
                  'SECTOR INFO',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                ),
                tileColor: Colors.black,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: SwitchListTile(
                  value: switchListTileValue2 ??= false,
                  onChanged: (newValue) async {
                    setState(() => switchListTileValue2 = newValue!);
                  },
                  title: Text(
                    'SECTOR GESTION',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  tileColor: Colors.black,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                child: SwitchListTile(
                  value: switchListTileValue3 ??= false,
                  onChanged: (newValue) async {
                    setState(() => switchListTileValue3 = newValue!);
                  },
                  title: Text(
                    'SECTOR MECANIC',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  tileColor: Colors.black,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                child: SwitchListTile(
                  value: switchListTileValue4 ??= false,
                  onChanged: (newValue) async {
                    setState(() => switchListTileValue4 = newValue!);
                  },
                  title: Text(
                    'SECTOR ELECTRIC',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  tileColor: Colors.black,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2, 170, 0, 0),
                child: Text(
                  'Blue Icon is 1st floor , Green  icon is 2nd floor',
                  maxLines: 2,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFFF0000),
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (switchListTileValue1 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(90, 305, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('B1 : 03 - 04 - 05 - 06  , T1  - T2'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.location_pin,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 24,
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 730, 0, 0),
                child: Text(
                  'Created with ♡ By  : Khemiri Ahmed & Bengagi Oussama',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFFF0000),
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              if (switchListTileValue1 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 370, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('T5 - T6 - T7 - T8'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: Color(0xFF08FF29),
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue1 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 340, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('LAB SE SANG - T3 - T4'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue2 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(140, 360, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Salle UVT - B2 : 03 - 04 - 05'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue2 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(140, 385, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('B2-01  : 03 - 04 '),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: Color(0xFF08FF29),
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue2 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(90, 400, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('LABO GESTION'),
                            content: Text('LABO GESTION'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue2 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(90, 425, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('LABO GESTION'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: Color(0xFF08FF29),
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue3 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(180, 410, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('B3 : 01 - 02 - 03'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue3 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(180, 435, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('B3 : 04 - 05'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: Color(0xFF08FF29),
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue3 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(140, 440, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('LABO MECANIC'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue3 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(140, 470, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('LABO MECANIC'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: Color(0xFF08FF29),
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue4 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(230, 460, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('B4 : 01 - 02 - 03'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue4 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(230, 485, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('B4 : 04 - 05'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: Color(0xFF08FF29),
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue4 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(180, 500, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('LABO ELECTRIC'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 24,
                    ),
                  ),
                ),
              if (switchListTileValue4 != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(180, 530, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('LABO ELECTRIC'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.place,
                      color: Color(0xFF08FF29),
                      size: 24,
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(270, 670, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await signOut();

                    context.goNamedAuth('authentification', mounted);
                  },
                  text: 'Sign Out',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
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
