import 'package:flutter/material.dart';

import '../features/auth/presentation/login_screen.dart';
import '../features/auth/presentation/signup_screen.dart';
import '../features/auth/presentation/splash_screen.dart';
import '../features/chat/presentation/chat_detail_screen.dart';
import '../features/chat/presentation/chat_list_screen.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/jobs/presentation/ai_discovery_screen.dart';
import '../features/jobs/presentation/job_details_screen.dart';
import '../features/jobs/presentation/jobs_list_screen.dart';
import '../features/jobs/presentation/post_job_screen.dart';
import '../features/jobs/presentation/submit_work_screen.dart';
import '../features/main/presentation/main_screen.dart';
import '../features/notifications/presentation/notification_detail_screen.dart';
import '../features/notifications/presentation/notifications_screen.dart';
import '../features/profile/presentation/certificates_screen.dart';
import '../features/profile/presentation/edit_profile_screen.dart';
import '../features/profile/presentation/portfolio_screen.dart';
import '../features/profile/presentation/profile_screen.dart';
import '../features/profile/presentation/public_profile_screen.dart';
import '../features/profile/presentation/settings_screen.dart';
import '../features/wallet/presentation/add_card_screen.dart';
import '../features/wallet/presentation/deposit_screen.dart';
import '../features/wallet/presentation/secure_payment_screen.dart';
import '../features/wallet/presentation/transaction_history_screen.dart';
import '../features/wallet/presentation/wallet_screen.dart';
import '../features/wallet/presentation/withdraw_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String main = '/main';
  static const String home = '/home';
  static const String jobsList = '/jobs-list';
  static const String jobDetails = '/job-details';
  static const String chatList = '/chat-list';
  static const String chatDetail = '/chat-detail';
  static const String profile = '/profile';
  static const String publicProfile = '/public-profile';
  static const String settings = '/settings';
  static const String wallet = '/wallet';
  static const String addCard = '/add-card';
  static const String securePayment = '/secure-payment';
  static const String deposit = '/deposit';
  static const String withdraw = '/withdraw';
  static const String transactionHistory = '/transaction-history';
  static const String postJob = '/post-job';
  static const String aiDiscovery = '/ai-discovery';
  static const String submitWork = '/submit-work';
  static const String notifications = '/notifications';
  static const String notificationDetail = '/notification-detail';
  static const String portfolio = '/portfolio';
  static const String editProfile = '/edit-profile';
  static const String certificates = '/certificates';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    Widget page;
    switch (routeSettings.name) {
      case splash:
        page = const SplashScreen();
        break;
      case login:
        page = const LoginScreen();
        break;
      case signup:
        page = const SignUpScreen();
        break;
      case main:
        page = const MainScreen();
        break;
      case home:
        page = const HomeScreen();
        break;
      case jobsList:
        page = const JobsListScreen();
        break;
      case jobDetails:
        page = const JobDetailsScreen();
        break;
      case chatList:
        page = const ChatListScreen();
        break;
      case chatDetail:
        page = const ChatDetailScreen();
        break;
      case profile:
        page = const ProfileScreen();
        break;
      case publicProfile:
        page = PublicProfileScreen();
        break;
      case settings:
        page = const SettingsScreen();
        break;
      case wallet:
        page = const WalletScreen();
        break;
      case addCard:
        page = const AddCardScreen();
        break;
      case deposit:
        page = const DepositScreen();
        break;
      case withdraw:
        page = const WithdrawScreen();
        break;
      case transactionHistory:
        page = const TransactionHistoryScreen();
        break;
      case submitWork:
        page = const SubmitWorkScreen();
        break;
      case securePayment:
        final args = routeSettings.arguments as Map<String, dynamic>;
        page = SecurePaymentScreen(
          amount: args['amount'],
          recipient: args['recipient'],
        );
        break;
      case postJob:
        page = const PostJobScreen();
        break;
      case aiDiscovery:
        final category = routeSettings.arguments as String? ?? 'ISH';
        page = AiDiscoveryScreen(category: category);
        break;
      case notifications:
        page = const NotificationsScreen();
        break;
      case notificationDetail:
        final args = routeSettings.arguments as Map<String, dynamic>;
        page = NotificationDetailScreen(
          title: args['title'],
          description: args['description'],
          time: args['time'],
          icon: args['icon'],
          iconColor: args['iconColor'],
        );
        break;
      case portfolio:
        page = const PortfolioScreen();
        break;
      case editProfile:
        page = const EditProfileScreen();
        break;
      case certificates:
        page = const CertificatesScreen();
        break;
      default:
        page = const MainScreen();
    }

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }

  static const String initialRoute = splash;
}
