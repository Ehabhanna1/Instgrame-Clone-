import 'package:go_router/go_router.dart';
import 'package:instgram_clone/features/home/ui/home_screen.dart';
import 'package:instgram_clone/features/main_navnar/main_nav_bar.dart';
import 'package:instgram_clone/features/post_add/post_add_screen.dart';
import 'package:instgram_clone/features/profile/profile_screen.dart';
import 'package:instgram_clone/features/reels/reels_screen.dart';
import 'package:instgram_clone/features/searsh/search_screen.dart';

abstract class AppRouter {
  static const kMainNavBar = '/mainNavBar';
  static const kHomeScreen = '/homeView';
  static const kSearchScreen = '/searchView';
  static const kPostAddScreen = '/postAddView';
  static const kReelsScreen = '/reelsView';
  static const kProfileScreen = '/profileView';
  

  static final router = GoRouter(
    initialLocation: kMainNavBar,
    routes: [
      GoRoute(path: kMainNavBar, builder: (context, state) => const MainNavBarScreen()),
      GoRoute(path: kHomeScreen, builder: (context, state) => const HomeScreen()),
      GoRoute(path: kSearchScreen, builder: (context, state) => const SearchScreen()),
      GoRoute(path: kPostAddScreen, builder: (context, state) => const PostAddScreen()),
      GoRoute(path: kReelsScreen, builder: (context, state) => const ReelsScreen()),
      GoRoute(path: kProfileScreen, builder: (context, state) => const ProfileScreen()),
      
    ],
  );
}