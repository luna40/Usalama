import 'package:flutter/material.dart';
import 'package:loanapp/Screens/components/iconbutton.dart';
import 'package:loanapp/Screens/components/theme.dart';
import 'package:loanapp/Screens/components/widgets.dart';
import 'package:loanapp/Screens/pincode.dart';
import 'package:lottie/lottie.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String phoneNumber = "";
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: globalTheme.of(context).primaryBackground,
      body: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 1,
        decoration: BoxDecoration(
          color: globalTheme.of(context).primaryBackground,
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.00, 1.00),
          child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Generated code for this Row-LogoContainer Widget...
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              color: const Color(0xB1F1F4F8),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/images/usalama_logo_red_large.png',
                                  width: 300,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 10, 0, 0),
                            child: RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Usalama ',
                                    style: globalTheme
                                        .of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Axiform',
                                          color: const Color(0xB1DC0B0B),
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const TextSpan(
                                    text: ' - flexible loans.',
                                    style: TextStyle(),
                                  )
                                ],
                                style: globalTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

// Generated code for this LottieAnimation Widget...
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                        child: Lottie.asset(
                          'assets/lottie/Animation.json',
                          width: 290,
                          height: 330,
                          fit: BoxFit.contain,
                          animate: true,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: globalTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x3600000F),
                          offset: Offset(0, -1),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: // Generated code for this ColumnContainer Widget...
                        Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 16, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Generated code for this IconButton Widget...
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 16, 0),
                                child: globalIconButton(
                                  borderColor:
                                      globalTheme.of(context).primaryBackground,
                                  borderRadius: 30,
                                  borderWidth: 2,
                                  buttonSize: 46,
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                    color:
                                        globalTheme.of(context).secondaryText,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Phone Sign In',
                                  style: globalTheme.of(context).headlineMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 16, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: phoneNumberController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Your Phone Number...',
                                    labelStyle:
                                        globalTheme.of(context).titleSmall,
                                    hintText: '+254 (704) 204-2056',
                                    hintStyle:
                                        globalTheme.of(context).bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: globalTheme
                                            .of(context)
                                            .primaryBackground,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: globalTheme
                                        .of(context)
                                        .secondaryBackground,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16, 24, 0, 24),
                                  ),
                                  style: globalTheme.of(context).titleMedium,
                                  maxLines: null,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 12, 20, 32),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FFButtonWidget(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Pincode()),
                                  );
                                },
                                text: 'Sign In',
                                options: FFButtonOptions(
                                  height: 40,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                  color: const Color(0xB1DC0B0B),
                                  textStyle: globalTheme
                                      .of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Calibri-Bold',
                                        color: Colors.white,
                                      ),
                                  elevation: 3,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
