import 'package:flutter/material.dart';
import 'package:flutter_posresto_app/core/extensions/date_time_ext.dart';
import 'package:intl/intl.dart';

import '../../../core/components/search_input.dart';
import '../../../core/constants/colors.dart';

class HomeTitle extends StatelessWidget {
  final Function(String value)? onChanged;

  const HomeTitle({
    super.key,
    // required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'POSESIF',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4.0),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(350, 0, 100, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.calendar_today, // Replace with your desired icon
                color:
                    AppColors.primary, // Adjust the color to match your style
              ),
              const SizedBox(
                  width: 8), // Add some space between the icon and the text
              Text(
                DateTime.now().toFormattedDate(),
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 1)),
          builder: (context, snapshot) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.access_time, // Replace with your desired icon
                ),
                const SizedBox(
                    width: 8), // Add some space between the icon and the text
                Text(
                  DateFormat('HH:mm:ss').format(DateTime.now()),
                ),
              ],
            );
          },
        )
        // SizedBox(
        //   width: 300.0,
        //   child: SearchInput(
        //     controller: controller,
        //     onChanged: onChanged,
        //     hintText: 'Search',
        //   ),
        // ),
      ],
    );
  }
}
