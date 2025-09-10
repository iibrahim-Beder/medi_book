import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_cubit.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/coustom_google_map.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/draggable_content_sheet.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/find_nearby_doctor_bloc_selector.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/normal_app_bar_for_search_bloc_selector.dart';

class FindNearbyScreenBody extends StatefulWidget {
  const FindNearbyScreenBody({super.key});

  @override
  State<FindNearbyScreenBody> createState() => _FindNearbyScreenBodyState();
}

class _FindNearbyScreenBodyState extends State<FindNearbyScreenBody>
    with WidgetsBindingObserver {
  final DraggableScrollableController _controller =
      DraggableScrollableController();

  double sheetSize = 0.2;
  bool _showAppBar = true;

  // Replace this with your Bloc loading state!
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    WidgetsBinding.instance.addObserver(this);

    _controller.addListener(() {
      if (_controller.isAttached) {
        final currentSize = _controller.size;

        // Update only when crossing 0.6 threshold
        if (currentSize > 0.6 && _showAppBar) {
          setState(() {
            _showAppBar = false;
          });
        } else if (currentSize <= 0.6 && !_showAppBar) {
          setState(() {
            _showAppBar = true;
          });
        }

        sheetSize = currentSize;
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    final isKeyboardOpen = bottomInset > 0;

    if (isKeyboardOpen) {
      context.read<FindNearbyDoctorCubit>().hideDoctorCard();
    } else {
      context.read<FindNearbyDoctorCubit>().showDoctorCard();
    }

    super.didChangeMetrics();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CoustomGoogleMap(),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AnimatedSlide(
            offset: _showAppBar ? Offset.zero : const Offset(0, -1),
            duration: const Duration(milliseconds: 300),
            child: AnimatedOpacity(
              opacity: _showAppBar ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                height: 300,
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.05, 0.5],
                  ),
                ),
              ),
            ),
          ),
        ),
        SafeArea(
          child: AnimatedSlide(
            offset: _showAppBar ? Offset.zero : const Offset(0, -1),
            duration: const Duration(milliseconds: 300),
            child: AnimatedOpacity(
              opacity: _showAppBar ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 250,
                  child: NormalAppBarForSearchBlocSelector(
                    isSearcHasShadow: true,
                    isArrowBackHasShadow: true,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: _showAppBar ? 225 : 60,
          left: 26.w,
          child: AnimatedSlide(
            offset: _showAppBar
                ? Offset.zero
                : const Offset(0, -0.9),
            duration: const Duration(milliseconds: 300),
            child: AnimatedOpacity(
              opacity:
                  1.0, 
              duration: const Duration(milliseconds: 300),
              child: const FindNearbyDoctorBlocSelector(),
            ),
          ),
        ),
        Positioned.fill(
          child: DraggableContentSheet(
            controller: _controller,
          ),
        ),
      ],
    );
  }
}
