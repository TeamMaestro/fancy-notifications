#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(FancyNotificationsPlugin, "FancyNotifications",
           CAP_PLUGIN_METHOD(setBadgeCount, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(clearBadgeCount, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(hasPermission, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(requestPermission, CAPPluginReturnPromise);
)
