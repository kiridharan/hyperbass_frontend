import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:in_app_purchases_paywall_ui/in_app_purchases_paywall_ui.dart';

class ProfileSubs extends StatefulWidget {
  const ProfileSubs({super.key});

  @override
  _ProfileSubsState createState() => _ProfileSubsState();
}

class _ProfileSubsState extends State<ProfileSubs> {
  PurchaseHandler purchaseHandler = PurchaseHandler();

  @override
  Widget build(BuildContext context) {
    return PaywallScaffold(
      // appBarTitle for scaffold
      appBarTitle: "Premium",
      child: SimplePaywall(
          // set a custom header
          headerContainer: Container(
              margin: const EdgeInsets.all(16),
              height: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: FractionalOffset.center,
                      image: NetworkImage(
                          "https://cdn.vectorstock.com/i/preview-2x/73/21/blockchain-concept-icon-symbols-vector-40227321.webp"))),
              child: Container()),
          // Title Bar
          title: "Your Premium Subscription",
          // SubTitle
          subTitle: "All features at a glance",
          // Add as many bullet points as you like
          bulletPoints: [
            IconAndText(Icons.cabin, "On Demand"),
            // IconAndText(Icons.hd, "Premium "),
            // IconAndText(Icons.sort, "Access to All Premium Articles")
          ],
          // Your subscriptions that you want to offer to the user
          subscriptionListData: [
            SubscriptionData(
                durationTitle: "Yearly",
                durationShort: "1 year",
                price: "€14,99€",
                dealPercentage: 69,
                productDetails: "Dynamic purchase data",
                index: 0),
            SubscriptionData(
                durationTitle: "Quarterly",
                durationShort: "3 Months",
                price: "€6,99",
                dealPercentage: 42,
                productDetails: "Dynamic purchase data",
                index: 2),
            SubscriptionData(
                durationTitle: "Monthly",
                durationShort: "1 month",
                price: "3,99€",
                dealPercentage: 0,
                productDetails: "Dynamic purchase data",
                index: 3)
          ],
          // Shown if isPurchaseSuccess == true
          successTitle: "Success!!",
          // Shown if isPurchaseSuccess == true
          successSubTitle: "Thanks for choosing Premium!",
          // Widget can be anything. Shown if isPurchaseSuccess == true
          successWidget: Container(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  child: const Text("Let's go!"),
                  onPressed: () {
                    print("let‘s go to the home widget again");
                  },
                )
              ])),
          activePlanList: [
            // links to the subscription overview on Android devices:
            GooglePlayGeneralActivePlan(),

            // links to the specific subscription on Android devices:
            GooglePlayActivePlan("yearly_pro", "com.tnx.packed"),

            // links to the subscription overview on iOS devices
            AppleAppStoreActivePlan(),
          ],
          // set true if subscriptions are loading
          isSubscriptionLoading: false,
          // if purchase is in progress, set to true. this will show a fullscreen progress indicator
          isPurchaseInProgress: false,
          // to show the success widget
          purchaseState: PurchaseState.NOT_PURCHASED,
          // callback Interface for restore and purchase tap events. Extend DefaultPurchaseHandler
          callbackInterface: purchaseHandler,
          purchaseStateStreamInterface: purchaseHandler,
          // provide your TOS
          tosData:
              TextAndUrl("Terms of Service", "https://www.linkfive.io/tos"),
          // provide your PP
          ppData:
              TextAndUrl("Privacy Policy", "https://www.linkfive.io/privacy"),
          // add a custom campaign widget
          campaignWidget: CampaignBanner(
            headline: "🥳 Summer Special Sale",
            subContent: Container(
                padding: const EdgeInsets.all(8),
                child: CountdownTimer(
                  endTime: DateTime.now()
                      .add(const Duration(days: 2, hours: 7))
                      .millisecondsSinceEpoch,
                )),
          )),
    );
  }
}

class PurchaseHandler extends DefaultPurchaseHandler {
  @override
  Future<bool> purchase(SubscriptionData productDetails) async {
    print("purchase start");
    isPendingPurchase = true;
    await Future.delayed(const Duration(seconds: 1));
    print("purchase done");
    purchaseState = PurchaseState.PURCHASED;
    isPendingPurchase = false;
    return true;
  }

  @override
  Future<bool> restore() async {
    isPendingPurchase = true;
    await Future.delayed(const Duration(seconds: 1));
    purchaseState = PurchaseState.PURCHASED;
    isPendingPurchase = false;
    return true;
  }
}
