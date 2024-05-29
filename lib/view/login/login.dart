import 'package:aftership_mvvm/view/login/login_controller.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/custom_colors.dart';
import '../../utils/utils.dart';
import '../../utils/widgets/carousel_widget.dart';
import '../../utils/widgets/custom_elevated_btn.dart';
import '../../utils/widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (_) => Scaffold(
              body: SafeArea(
                minimum: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 100),
                        const SizedBox(
                          height: 280,
                          child: CarouselLoginSliderWidget(),
                        ),
                        Text("aftership",
                            style: TextStyle(
                                fontSize: 40,
                                color: CustomColors.primaryColor,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1,
                                          color: CustomColors.primaryColor))),
                              width: 120,
                              height: 50,
                              child: CountryCodePicker(
                                onChanged: (element) {
                                  debugPrint(element.toLongString());
                                  _.codeController = element.dialCode;
                                },
                                initialSelection: 'PK',
                                favorite: const ['+92', 'PK'],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 170,
                              child: underlinedTextField(
                                  currentFocus: _.focusNode,
                                  context: context,
                                  contentPadding:
                                      const EdgeInsets.only(top: 12, left: 4),
                                  textStyle: const TextStyle(fontSize: 14),
                                  hint: "3270000786",
                                  textController: _.phoneController,
                                  keyboard:
                                      const TextInputType.numberWithOptions()),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              floatingActionButton: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Obx(
                    () => _.loadingIndicator.value
                        ? SizedBox(
                            height: 40,
                            child: kLoadingWidget(),
                          )
                        : customElevatedButton(
                            icon: const Text(
                              "Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () async {
                              _.phone =
                                  _.codeController! + _.phoneController.text;
                              _.authWithPhone();
                            },
                          ),
                  )),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
            ));
  }
}
