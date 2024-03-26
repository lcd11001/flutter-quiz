// Generate AppVersion class to get app version using package_info_plus
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return builderAppVersion(context, snapshot.data as PackageInfo);
          }
        }
        return const SizedBox();
      },
    );
  }

  Widget builderAppVersion(BuildContext context, PackageInfo packageInfo) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Version: ${packageInfo.version}(${packageInfo.buildNumber})',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
