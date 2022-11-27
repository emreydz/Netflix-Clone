import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../features/Downloads/view/downloads.dart';
import '../../features/Search/view/search_screen.dart';
import '../../features/fast_laug/view/fast_laug.dart';
import '../../features/home/view/home_screen.dart';
import '../../features/hot_and_new/view/hot_and_new.dart';

part 'bottom_state.dart';

class BottomCubit extends Cubit<BottomState> {
  int pageIndex = 0;
  BottomCubit() : super(BottomInitial());

  List pages = [
    Home(),
    HotAndNew(),
    fast_laug(),
    SearchPage(),
    DownloadsPage(),
  ];
  changePage(int tappedIndex) {
    pageIndex = tappedIndex;
    emit(BottomInitial());
  }
}
