import 'package:flutter/material.dart';
//import 'package:loanapp/Screens/applyforloan.dart';
import 'package:loanapp/Screens/components/theme.dart';
import 'package:loanapp/Screens/components/widgets.dart';
import 'package:loanapp/Screens/getaloan.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
//import 'package:loanapp/Screens/getaloan.dart';

class Pincode extends StatefulWidget {
  const Pincode({super.key});

  @override
  State<Pincode> createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
  // Create a TextEditingController for the PinCodeTextField
  TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalTheme.of(context).secondaryBackground,
      body: // Generated code for this Column Widget...
          Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_sharp,
                          color: Color(0xB1DC0B0B),
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      'forgot PIN?  ',
                      style: globalTheme.of(context).bodyMedium.override(
                            fontFamily: 'Axiform',
                            color: const Color(0xB1DC0B0B),
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Enter your PIN to login',
                      style: globalTheme.of(context).headlineSmall,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(44, 8, 44, 0),
                      child: Text(
                        'This code helps keep your account safe and secure.',
                        textAlign: TextAlign.center,
                        style: globalTheme.of(context).bodySmall,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                      child: PinCodeTextField(
                        autoDisposeControllers: false,
                        appContext: context,
                        length: 4,
                        textStyle: globalTheme.of(context).titleSmall.override(
                              fontFamily: 'Axiform',
                              color: const Color(0xB1DC0B0B),
                            ),
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        enableActiveFill: false,
                        autoFocus: true,
                        enablePinAutofill: false,
                        errorTextSpace: 0,
                        showCursor: true,
                        cursorColor: const Color(0x261E1A1A),
                        obscureText: false,
                        hintCharacter: '-',
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          fieldHeight: 60,
                          fieldWidth: 60,
                          borderWidth: 2,
                          borderRadius: BorderRadius.circular(12),
                          shape: PinCodeFieldShape.box,
                          activeColor: const Color(0xB1DC0B0B),
                          inactiveColor: const Color(0xD11D1B1B),
                          selectedColor: const Color(0xD1090606),
                          activeFillColor: const Color(0xB1DC0B0B),
                          inactiveFillColor: const Color(0xD11D1B1B),
                          selectedFillColor: const Color(0xD1090606),
                        ),
                        controller: pinController,
                        onChanged: (_) {},
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomTabBar(),
                    ),
                  );
                },
                text: 'Continue',
                options: FFButtonOptions(
                  height: 40,
                  padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: const Color(0xB1DC0B0B),
                  textStyle: globalTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
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
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controller to prevent memory leaks
    pinController.dispose();
    super.dispose();
  }
}
