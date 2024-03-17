import 'dart:async';

mixin SubscriptionMixin {
  final _subscriptions = <StreamSubscription<dynamic>>[];

  void addSubscription(StreamSubscription<dynamic> subscription) {
    _subscriptions.add(subscription);
  }

  Future<void> cancelAllSubscriptions() async {
    for (final subscription in _subscriptions) {
      try {
        await subscription.cancel();
      } catch (_) {}
    }
    _subscriptions.clear();
  }
}
