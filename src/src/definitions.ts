declare global {
    interface PluginRegistry {
        FancyNotifications?: FancyNotificationsPlugin;
    }
}

export interface FancyNotificationsPlugin {

    setBadgeCount(options: { count: number }): Promise<any>;

    clearBadgeCount(): Promise<any>;

    requestPermission(): Promise<{ value: boolean }>;

    hasPermission(): Promise<{ value: boolean }>;
}
