import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:orderd_app/modules/basic/home/home_screen.dart';
import 'package:orderd_app/modules/basic/menu/about/about_screen.dart';
import 'package:orderd_app/modules/basic/payment/card/add_card_screen.dart';
import 'package:orderd_app/utils/static_methods.dart';

import '../helpers/assets_helper.dart';
import '../modules/auth/signin/signin_screen.dart';
import '../modules/auth/signup/signup_screen.dart';
import '../modules/auth/signup/verify_number_screen.dart';
import '../modules/basic/basic_screen.dart';
import '../modules/basic/delivery/delivery_screen.dart';
import '../modules/basic/home/order/complete_order_screen.dart';
import '../modules/basic/home/order/your_order_screen.dart';
import '../modules/basic/menu/help/help_screen.dart';
import '../modules/basic/notifications/notifications_screen.dart';
import '../modules/basic/payment/payment_screen.dart';
import '../modules/basic/profile/edit_profile_screen.dart';
import '../modules/basic/profile/profile_screen.dart';
import '../modules/basic/track/order_assigned_screen.dart';
import '../modules/basic/track/tracking_order_screen.dart';
import '../widgets/custom_stepper.dart';

class Constants{
  static const size = Size(375,812);

  // routes name
  static const splashScreen = '/splashScreen';
  static const signInScreen = '/signInScreen';
  static const signUpScreen = '/signUpScreen';
  static const homeScreen = '/homeScreen';
  static const basicScreen = '/BasicScreen';
  static const verifyScreen = '/verifyNumberScreen';
  static const completeScreen = '/CompleteOrderScreen';
  static const yourOrderScreen = '/YourOrderScreen';
  static const deliveryScreen = '/DeliveryScreen';
  static const paymentScreen = '/PaymentScreen';
  static const profileScreen = '/ProfileScreen';
  static const orderAssignedScreen = '/OrderAssignedScreen';
  static const editProfileScreen = '/EditProfileScreen';
  static const addCardScreen = '/AddCardScreen';
  static const notificationsScreen = '/NotificationsScreen';
  static const trackingOrderScreen = '/TrackingOrderScreen';
  static const aboutScreen = '/AboutScreen';
  static const helpScreen = '/HelpScreen';
  static const stepper = 'stepper';
  // routes
  static final routes = {
    homeScreen : (_)=> HomeScreen(),
    signInScreen : (_)=> const SignInScreen(),
    signUpScreen : (_)=> const SignUpScreen(),
    basicScreen : (_)=> const BasicScreen(),
    verifyScreen : (_)=> const VerifyNumberScreen(),
    completeScreen : (_)=> const CompleteOrderScreen(),
    yourOrderScreen : (_)=> YourOrderScreen(),
    deliveryScreen : (_)=> DeliveryScreen(),
    paymentScreen : (_)=> PaymentScreen(),
    profileScreen : (_)=> ProfileScreen(),
    orderAssignedScreen : (_)=> const OrderAssignedScreen(),
    editProfileScreen : (_)=> EditProfileScreen(),
    addCardScreen : (_)=> const AddCardScreen(),
    notificationsScreen : (_)=> const NotificationsScreen(),
    trackingOrderScreen: (_)=> const TrackingOrderScreen(),
    aboutScreen: (_)=> const AboutScreen(),
    helpScreen: (_)=> const HelpScreen(),
  };

  //Strings
  static const signIn = 'Sign In';
  static const signUp = 'Sign UP';
  static const phoneNumber = 'Phone Number';
  static const email = 'Email';
  static const enterPhoneNum = 'Enter phone number';
  static const enterName = 'Enter Name';
  static const enterEmail = 'Enter Email';
  static const password = 'Password';
  static const createAccount = 'Create account';
  static const verifyNum = 'Verify Your Mobile Number';
  static const enterPinCode = 'Enter The Pin You Have Received Via SMS On';
  static const desc = 'With Order App You Can Get The Different Products From Different Places In The Fastest Way.';
  static const lastOrder = 'Last Order';
  static const noOrder = 'No Any Order Yet';
  static const makeOrder = 'Lets Make First Order';
  static const makeOrderBtn = 'Make Order';
  static const homePage = 'Home Page';
  static const delivery = 'Delivery';
  static const payment = 'Payment';
  static const profile = 'Profile';
  static const nameKey = 'name';
  static const widgetKey = 'widget';
  static const completeOrder = 'Complete Order';
  static const orderDetails = 'Order Details:';
  static const labelKey = 'label';
  static const questionKey = 'question';
  static const answerKey = 'answer';
  static const iconKey = 'icon';
  static const funKey = 'onChange';
  static const yourProd = 'Your Product:';
  static const address = 'Pickup Address:';
  static const from = 'From:';
  static const to = 'To:';
  static const date = 'Date:';
  static const time = 'Time:';
  static const confirm = 'Confirm';
  static const yourOrder = 'Your order';
  static const price = 'Price:';
  static const cancel = 'Cancel';
  static const checkOut = 'Check Out';
  static const choosePayment = 'Choose Type Of Payment:';
  static const cardInfo = 'Card Info:';
  static const cash = 'Cash';
  static const credit = 'Credit Card';
  static const wallet = 'Wallet';
  static const doneBtn = 'Done';
  static const orderAssigned = 'Your Order Was Assigned';
  static const trackOrder = 'Track My Order';
  static const backHome = 'Go Back To Home';
  static const editProfileBtn = 'Edit Profile';
  static const changProfImg = 'Change Profile Picture';
  static const name = 'Name:';
  static const about = 'About';
  static const contactUs = 'Contact Us';
  static const help = 'Help';
  static const logOut = 'Log Out';
  static const all = 'All';
  static const ongoing = 'Ongoing';
  static const delivered = 'Delivered';
  static const unDelivered = 'Un Delivered';
  static const addCard = 'Add Card';
  static const cardHolderName = 'Card Holder Name:';
  static const cardNumber = 'Card Number:';
  static const expiryDate = 'Expiry Date:';
  static const cVV = 'CVV/CVC';
  static const notifications = 'Notifications';
  static const trackingOrder = 'Tracking order';
  static const howHelp = 'How can we help you?';
  static const searchOnCenter = 'Search our help center';
  static const frequentQuestions = 'Frequent Questions';
  static const questionOne = 'It is a long established fact that a reader will? ';
  static const questionTwo = 'It is a long established fact that a reader will? ';
  static const answerOne = '''distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normaldistribution of letters,as opposed to using 'Content here,content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still in their infancy.Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).''';
  static const answerTwo = 'distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal .';
  static const aboutDescription = ''' Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est eopksio laborum. Sed ut perspiciatis unde omnis istpoe natus error sit voluptatem accusantium doloremque eopsloi laudantium, totam rem aperiam.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est eopksio laborum. Sed ut perspiciatis unde omnis istpoe natus error sit voluptatem accusantium doloremque eopsloi laudantium, totam rem aperiam.Excepteur sint occaecat cupidatat non proident.''';

  // Lists
  static const List imagesPath = ['insta_icon.svg','google_img.svg','facebook_icon.svg'];
  static List<Map<String, dynamic>> tabs = [
    { nameKey: homePage,iconKey: AssetsHelper.home_icon, widgetKey: HomeScreen()},
    { nameKey: delivery,iconKey: AssetsHelper.delivery_icon, widgetKey: DeliveryScreen()},
    { nameKey: payment,iconKey: AssetsHelper.payment_icon, widgetKey: PaymentScreen()},
    { nameKey: profile,iconKey: AssetsHelper.profile_icon, widgetKey: ProfileScreen()},
  ];
  static List<Map<String, dynamic>> labels = [
    { labelKey: yourProd, iconKey: null, funKey: (text) {}},
    { labelKey: address, iconKey: StaticMethods.svgPicture(AssetsHelper.location), funKey: (text) {}},
    { labelKey: to, iconKey: StaticMethods.svgPicture(AssetsHelper.location), funKey: (text) {}},
    { labelKey: date, iconKey: StaticMethods.svgPicture(AssetsHelper.date), funKey: (text) {}},
    { labelKey: time, iconKey: StaticMethods.svgPicture(AssetsHelper.time), funKey: (text) {}},
  ];
  static Map<String, dynamic> checkAndCancelButtons = {
    Constants.cancel: ()=> Get.offNamed(basicScreen),
    //TODO: here also set the selected index from the basicScreen
    Constants.checkOut: ()=> Get.offNamed(addCardScreen),
  };
  static List<Map<String, dynamic>> paymentTypes = [
    { labelKey: cash, iconKey: AssetsHelper.cash,},
    { labelKey: credit, iconKey: AssetsHelper.credit,},
    { labelKey: wallet, iconKey: AssetsHelper.wallet,},
  ];
  static List<Map<String, dynamic>> drawerOptions = [
    { labelKey: homePage, iconKey: AssetsHelper.homeIcon, funKey:(){},},
    { labelKey: about, iconKey: AssetsHelper.aboutIcon, funKey:(){ Get.offAndToNamed(aboutScreen);},},
    { labelKey: contactUs, iconKey: AssetsHelper.contactIcon, funKey:(){},},
    { labelKey: help, iconKey: AssetsHelper.helpIcon, funKey:(){Get.offAndToNamed(helpScreen);},},
    { labelKey: logOut, iconKey: AssetsHelper.logoutIcon, funKey:(){},},
  ];
  static List<Map<String, dynamic>> cardInfoLabels = [
    { labelKey: cardHolderName, funKey: (text) {},},
    { labelKey: cardNumber, funKey: (text) {},},
    { labelKey: expiryDate, funKey: (text) {},},
    { labelKey: cVV, funKey: (text) {},},
  ];
  static List<Map<String, dynamic>> questions = [
    { questionKey: questionOne, answerKey: answerOne},
    { questionKey: questionTwo, answerKey: answerTwo},
  ];
  static List orderStatus = [all,ongoing,delivered,unDelivered];
}