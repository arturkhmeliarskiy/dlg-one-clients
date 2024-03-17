import UIKit
import Flutter
import flutter_local_notifications
import SwiftKeychainWrapper

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      // Next code related to [flutter_secure_storage] plugin
      // The Keychain doesn't clean data after the app uninstalled from device.
      // The idea is to store some key in [UserDefaults] which will be removed after the application
      // is uninstalled.
      // This means that after the first run we will check the existence of that key and if it does
      // not exist, then this means fresh install, then clear the Keychain
      let uniqueServiceName = "flutter_secure_storage_service"
      let customKeychainWrapperInstance = KeychainWrapper(serviceName: uniqueServiceName, accessGroup: nil)
      if !UserDefaults.standard.bool(forKey: "dlsOneFirstTimeLaunchOccurred") {
                customKeychainWrapperInstance.removeAllKeys()
                UserDefaults.standard.set(true, forKey: "dlsOneFirstTimeLaunchOccurred")
      }
      
      if #available(iOS 10.0, *) {
          UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
      }

      GeneratedPluginRegistrant.register(with: self)
      
      FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
          GeneratedPluginRegistrant.register(with: registry)
      }
    
      application.registerForRemoteNotifications()
      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
