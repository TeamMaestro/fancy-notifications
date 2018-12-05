import Foundation
import Capacitor
import UserNotifications
typealias JSObject = [String:Any]
@objc(FancyNotificationsPlugin)
public class FancyNotificationsPlugin: CAPPlugin {
    @objc func setBadgeCount(_ call: CAPPluginCall) {
        let count = call.getInt("count") ?? 0
        DispatchQueue.main.async {
            UIApplication.shared.applicationIconBadgeNumber = count;
        }
        call.success();
    }

    @objc func clearBadgeCount(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            UIApplication.shared.applicationIconBadgeNumber = 0;
            call.success();
        }
    }


    @objc func requestPermission(_ call: CAPPluginCall) {
        let center =  UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.badge]) { (success, error) in
            var object: JSObject = [:]
            if(error != nil){
                object["value"] = false;
                call.success(object)
            }else{
                object["value"] = true;
                call.success(object)
            }
        }
    }


    @objc func hasPermission(_ call: CAPPluginCall) {
        let center =  UNUserNotificationCenter.current()
        var object: JSObject = [:]
        center.getNotificationSettings { (settings) in
            print(settings.authorizationStatus == .authorized)
            if(settings.authorizationStatus == .authorized){
                object["value"] = true;
                call.success(object)
            }else{
                object["value"] = false;
                call.success(object)
            }
        }
    }
}
