import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_tutorials/ui/route/route_generator.dart';
import 'package:flutter_tutorials/ui/views/home_view/home-screen.dart';

class DynamicLinksApi {
  final dynamicLink = FirebaseDynamicLinks.instance;

  handleDynamicLink() async {
    await dynamicLink.getInitialLink();
    dynamicLink.onLink(onSuccess: (PendingDynamicLinkData data) async {
      handleSuccessLinking(data);
    }, onError: (OnLinkErrorException error) async {
      print(error.message.toString());
    });
  }

  void handleSuccessLinking(PendingDynamicLinkData data) {
    final Uri deepLink = data?.link;

    if (deepLink != null) {
      var isRefer = deepLink.pathSegments.contains('refer');
      if (isRefer) {
        var code = deepLink.queryParameters['code'];
        if (code != null) {
          GeneratedRoute.navigateTo(
            HomeScreen.routeName,
            args: code,
          );
        }
      }
    }
  }
}
