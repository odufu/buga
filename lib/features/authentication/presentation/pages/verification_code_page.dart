import 'package:buga/core/widgets/app_bar.dart';
import 'package:buga/core/widgets/auth_elevated_button.dart';
import 'package:buga/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class VerificationCodePage extends StatefulWidget {
  @override
  _VerificationCodePageState createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty) {
      if (index < 5) {
        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
      } else {
        FocusScope.of(context)
            .unfocus(); // Dismiss the keyboard on the last box
      }
    }
  }

  String _getCode() {
    return _controllers.map((controller) => controller.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Verify Login",
        backAllowed: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  'Enter the 6-digit code sent to you',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      width: 50,
                      child: TextFormField(
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        onChanged: (value) => _onChanged(value, index),
                        decoration: InputDecoration(
                          counterText: "", // Hides the character counter
                          border: OutlineInputBorder(),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 30),
                AuthElevatedButton(
                  buttonText: "Verify Code",
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  color: Theme.of(context).colorScheme.onSecondary,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/footerdecor.png"))),
            )
          ],
        ),
      ),
    );
  }
}
