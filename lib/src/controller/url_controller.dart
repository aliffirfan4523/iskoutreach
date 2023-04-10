
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

launchRegisterUrl() async {
  const url = 'https://spskt4.moe.gov.my/spat4_mohon/index.cfm';
  var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
  if(urllaunchable){
      await launch(url); //launch is from url_launcher package to launch URL
  }else{
      print("URL can't be launched.");
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
  if (await canLaunchUrlString(launchUri)) {
      await launchUrlString(launchUri);
    } else {
      throw 'Could not launch $launchUri';
    }
}

makeEmail(String email) async{
  String uri ='mailto:$email?subject=Pertanyaan%20Lanjut';

  var urllaunchable = await canLaunch(uri); //canLaunch is from url_launcher package
  if(urllaunchable){
      await launch(uri); //launch is from url_launcher package to launch URL
  }else{
      print("URL can't be launched.");
  }
}