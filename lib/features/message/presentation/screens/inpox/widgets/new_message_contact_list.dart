
import 'package:flutter/cupertino.dart';
import 'package:medi_book/features/message/presentation/screens/inpox/widgets/inpox_item.dart';

class NewMessageContactList extends StatelessWidget {
  const NewMessageContactList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
     padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
     child: const InpoxItem(
       imagePath: 'assets/images/rendy.png',
       name: 'Dr. Randy Wigham',
       speciality: 'General Doctor',
       place: 'RSUD Gatot Subroto',
     ),
            ),
            itemCount: 10,
          ),
        );
  }
}
