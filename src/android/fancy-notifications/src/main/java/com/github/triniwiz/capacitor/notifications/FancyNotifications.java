package com.github.triniwiz.capacitor.notifications;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadger;

@NativePlugin()
public class FancyNotifications extends Plugin {

    @PluginMethod()
    public void setBadgeCount(PluginCall call) {
        int count = call.getInt("count", 0);
        if (ShortcutBadger.isBadgeCounterSupported(getContext())) {
            ShortcutBadger.applyCount(getContext(), count);
            call.success();
        } else {
            call.error("Device not supported");
        }

    }

    @PluginMethod()
    public void clearBadgeCount(PluginCall call) {
        if (ShortcutBadger.isBadgeCounterSupported(getContext())) {
            ShortcutBadger.removeCount(getContext());
            call.success();
        } else {
            call.error("Device not supported");
        }
    }

    @PluginMethod()
    public void requestPermission(PluginCall call) {
        JSObject jsObject = new JSObject();
        jsObject.put("value", true);
        call.resolve(jsObject);
    }

    @PluginMethod()
    public void hasPermission(PluginCall call) {
        JSObject jsObject = new JSObject();
        jsObject.put("value", true);
        call.resolve(jsObject);
    }
}
