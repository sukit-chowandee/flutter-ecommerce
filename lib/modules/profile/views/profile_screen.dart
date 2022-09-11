import 'package:flutter/cupertino.dart';
import 'package:shopee_clone/modules/common/widgets/screen_wrapper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(child: Text("Profile"),);
  }
}