import 'package:dms/core/constants/app_strings.dart';
import 'package:dms/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: WebAppBar(title: AppStrings.notifications));
  }
}
