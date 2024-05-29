import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'custom_colors.dart';

class Utils {}

kLoadingWidget({Color? loaderColor, double? size}) => SpinKitChasingDots(
      color: loaderColor ?? CustomColors.loaderColor,
      size: size ?? 30.0,
    );
