
  import 'package:flutter/material.dart';

void jumpToTheEndList(ScrollController scrollController) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        scrollController.animateTo(
        scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    
  }