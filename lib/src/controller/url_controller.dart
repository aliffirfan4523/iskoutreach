
import 'package:url_launcher/url_launcher.dart';

launchRegisterUrl() async {
  const url = 'https://spskt4.moe.gov.my/spat4_mohon/index.cfm';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

launchWhatsapp() async{
  const url = 'https://wa.me/60183608467';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
makePhoneCall(int phonenumber) async {
  String launchUri = 'tel:+$phonenumber';
  if (await canLaunch(launchUri)) {
      await launch(launchUri);
    } else {
      throw 'Could not launch $launchUri';
    }
}

makeEmail(String email) async{
  String uri ='mailto:$email?subject=Pertanyaan%20Lanjut';

  if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
}