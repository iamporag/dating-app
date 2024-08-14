

// ignore_for_file: constant_identifier_names

class Routes {
  static const LOGIN_ROUTE = Route(path: '/login', name: 'login');
  static const NO_ACCOUNT_ROUTE = Route(path: '/account_not_found', name: 'account not found');
  static const REGISTRATION_PROCESS_ROUTE = Route(path: '/registration_process', name: 'registration process');
  static const REGISTRATION_AGREEMENT_ROUTE = Route(path: '/registration_agreement', name: 'registration agreement');
  static const DISCOVER_ROUTE = Route(path: '/', name: 'home');
  static const SEARCH_ROUTE = Route(path: '/search', name: 'search');
  static const LIJKE_MATCH_ROUTE = Route(path: '/like_match', name: 'like match');
  static const CHAT_ROUTE = Route(path: '/chat/:id', name: 'chat');
  static const INBOX_ROUTE = Route(path: '/inbox', name: 'inbox');
  static const PROFILE_ROUTE = Route(path: '/profile', name: 'profile');
  // static const PROFILE_EDIT_ROUTE = "/profile_edit";
  static const PROFILE_EDIT_ROUTE = Route(path: '/profile_edit', name: 'profile edit');
  static const NOTIFICATIONS_ROUTE = Route(path: '/notifications', name: 'notifications');
}


class Route {
  final String path;
  final String name;

  const Route({required this.path, required this.name});
}