// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to CheFood!`
  String get welcomeMessage {
    return Intl.message(
      'Welcome to CheFood!',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signin {
    return Intl.message('Sign In', name: 'signin', desc: '', args: []);
  }

  /// `Sign Up`
  String get signup {
    return Intl.message('Sign Up', name: 'signup', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email or Phone`
  String get emailOrPhone {
    return Intl.message(
      'Email or Phone',
      name: 'emailOrPhone',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Email `
  String get email {
    return Intl.message('Email ', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Log In Now`
  String get logInNow {
    return Intl.message('Log In Now', name: 'logInNow', desc: '', args: []);
  }

  /// `Or Sign In`
  String get orSignIn {
    return Intl.message('Or Sign In', name: 'orSignIn', desc: '', args: []);
  }

  /// `User Name`
  String get username {
    return Intl.message('User Name', name: 'username', desc: '', args: []);
  }

  /// `Your Account`
  String get yourAccount {
    return Intl.message(
      'Your Account',
      name: 'yourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter your full name`
  String get enterYourFullName {
    return Intl.message(
      'Enter your full name',
      name: 'enterYourFullName',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get createAccount {
    return Intl.message(
      'Create account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back to CHEFOOD!`
  String get welcomeBack {
    return Intl.message(
      'Welcome back to CHEFOOD!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to enjoy tasty meals and quick delivery`
  String get subtitleLogin {
    return Intl.message(
      'Sign in to enjoy tasty meals and quick delivery',
      name: 'subtitleLogin',
      desc: '',
      args: [],
    );
  }

  /// `Sign up to explore delicious homemade meals and start your food journey`
  String get subtitleSignup {
    return Intl.message(
      'Sign up to explore delicious homemade meals and start your food journey',
      name: 'subtitleSignup',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to CHEFOOD`
  String get onboardingTitle1 {
    return Intl.message(
      'Welcome to CHEFOOD',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Explore Recipes & Posts`
  String get onboardingTitle2 {
    return Intl.message(
      'Explore Recipes & Posts',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Order Homemade Meals`
  String get onboardingTitle3 {
    return Intl.message(
      'Order Homemade Meals',
      name: 'onboardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Save Favorites & Track Orders`
  String get onboardingTitle4 {
    return Intl.message(
      'Save Favorites & Track Orders',
      name: 'onboardingTitle4',
      desc: '',
      args: [],
    );
  }

  /// `Your Food Journey Awaits`
  String get onboardingTitle5 {
    return Intl.message(
      'Your Food Journey Awaits',
      name: 'onboardingTitle5',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Discover delicious homemade meals and connect with home cooks.`
  String get onboardingDesc1 {
    return Intl.message(
      'Discover delicious homemade meals and connect with home cooks.',
      name: 'onboardingDesc1',
      desc: '',
      args: [],
    );
  }

  /// `Follow your favorite chefs, see trending recipes and food inspiration`
  String get onboardingDesc2 {
    return Intl.message(
      'Follow your favorite chefs, see trending recipes and food inspiration',
      name: 'onboardingDesc2',
      desc: '',
      args: [],
    );
  }

  /// `Quick and easy delivery of tasty home cooked food`
  String get onboardingDesc3 {
    return Intl.message(
      'Quick and easy delivery of tasty home cooked food',
      name: 'onboardingDesc3',
      desc: '',
      args: [],
    );
  }

  /// `Save Favorites & Track Orders`
  String get onboardingDesc4 {
    return Intl.message(
      'Save Favorites & Track Orders',
      name: 'onboardingDesc4',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
