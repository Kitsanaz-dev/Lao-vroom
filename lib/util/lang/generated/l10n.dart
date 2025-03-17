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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `LAO VROOM`
  String get appname {
    return Intl.message(
      'LAO VROOM',
      name: 'appname',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Tap Anywhere to Continue`
  String get tap {
    return Intl.message(
      'Tap Anywhere to Continue',
      name: 'tap',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in {
    return Intl.message(
      'Log in',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logout {
    return Intl.message(
      'Log out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get q1 {
    return Intl.message(
      'Already have an account?',
      name: 'q1',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have account? `
  String get q2 {
    return Intl.message(
      'Don’t have account? ',
      name: 'q2',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t received the code?`
  String get q3 {
    return Intl.message(
      'Didn’t received the code?',
      name: 'q3',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resend {
    return Intl.message(
      'Resend Code',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get vcode {
    return Intl.message(
      'Verification Code',
      name: 'vcode',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a OTP to your registered`
  String get otp {
    return Intl.message(
      'We have sent a OTP to your registered',
      name: 'otp',
      desc: '',
      args: [],
    );
  }

  /// `phone number.`
  String get otpnewline {
    return Intl.message(
      'phone number.',
      name: 'otpnewline',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Hit the Road in Style`
  String get introhead1 {
    return Intl.message(
      'Hit the Road in Style',
      name: 'introhead1',
      desc: '',
      args: [],
    );
  }

  /// `Drive Your Way`
  String get introhead2 {
    return Intl.message(
      'Drive Your Way',
      name: 'introhead2',
      desc: '',
      args: [],
    );
  }

  /// `Unlock Exclusive Deals`
  String get introhead3 {
    return Intl.message(
      'Unlock Exclusive Deals',
      name: 'introhead3',
      desc: '',
      args: [],
    );
  }

  /// `and Smooth Rides`
  String get introhead3newline {
    return Intl.message(
      'and Smooth Rides',
      name: 'introhead3newline',
      desc: '',
      args: [],
    );
  }

  /// `Ready to Roll? Your Perfect Ride Awaits`
  String get introhead4 {
    return Intl.message(
      'Ready to Roll? Your Perfect Ride Awaits',
      name: 'introhead4',
      desc: '',
      args: [],
    );
  }

  /// `Affordable, Reliable, and Ready for Your Next`
  String get introbody1 {
    return Intl.message(
      'Affordable, Reliable, and Ready for Your Next',
      name: 'introbody1',
      desc: '',
      args: [],
    );
  }

  /// `Adventure! Book Your Ride Today!`
  String get introbody1newline {
    return Intl.message(
      'Adventure! Book Your Ride Today!',
      name: 'introbody1newline',
      desc: '',
      args: [],
    );
  }

  /// `Explore Our Wide Range of Cars for`
  String get introbody2 {
    return Intl.message(
      'Explore Our Wide Range of Cars for',
      name: 'introbody2',
      desc: '',
      args: [],
    );
  }

  /// `Every Journey!`
  String get introbody2newline {
    return Intl.message(
      'Every Journey!',
      name: 'introbody2newline',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up Today for a Seamless Car Rental`
  String get introbody3 {
    return Intl.message(
      'Sign Up Today for a Seamless Car Rental',
      name: 'introbody3',
      desc: '',
      args: [],
    );
  }

  /// `Experience!`
  String get introbody3newline {
    return Intl.message(
      'Experience!',
      name: 'introbody3newline',
      desc: '',
      args: [],
    );
  }

  /// `Let’s Get You on the Road in Minutes!`
  String get introbody4 {
    return Intl.message(
      'Let’s Get You on the Road in Minutes!',
      name: 'introbody4',
      desc: '',
      args: [],
    );
  }

  /// `Let's Get Started`
  String get getstarted {
    return Intl.message(
      'Let\'s Get Started',
      name: 'getstarted',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstname {
    return Intl.message(
      'First name',
      name: 'firstname',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastname {
    return Intl.message(
      'Last name',
      name: 'lastname',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phonenumber {
    return Intl.message(
      'Phone Number',
      name: 'phonenumber',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get conti {
    return Intl.message(
      'Continue',
      name: 'conti',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get dark {
    return Intl.message(
      'Dark',
      name: 'dark',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get en {
    return Intl.message(
      'English',
      name: 'en',
      desc: '',
      args: [],
    );
  }

  /// `Lao`
  String get la {
    return Intl.message(
      'Lao',
      name: 'la',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get you {
    return Intl.message(
      'You',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `Brands`
  String get brands {
    return Intl.message(
      'Brands',
      name: 'brands',
      desc: '',
      args: [],
    );
  }

  /// `Featured`
  String get featured {
    return Intl.message(
      'Featured',
      name: 'featured',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get seeall {
    return Intl.message(
      'See all',
      name: 'seeall',
      desc: '',
      args: [],
    );
  }

  /// `Rent Now`
  String get rentnow {
    return Intl.message(
      'Rent Now',
      name: 'rentnow',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
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
      Locale.fromSubtags(languageCode: 'la'),
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
