
import 'package:url_launcher/url_launcher.dart';

launchURL() async {
  const url = 'https://spskt4.moe.gov.my/spat4_mohon/index.cfm';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}