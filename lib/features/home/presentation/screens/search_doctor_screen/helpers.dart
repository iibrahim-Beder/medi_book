  import 'package:flutter/material.dart';
import 'package:medi_book/core/widgets/search/search_bottom_sheet_body.dart';

  void showSearchOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return const SearchBottomSheetBody();
      },
    );
  }