import 'package:flutter/cupertino.dart';
import 'package:shopee_clone/modules/common/widgets/screen_wrapper.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(child: Text("Store"),);
  }
}