import { WebPlugin } from '@capacitor/core';
import { FancyNotificationsPlugin } from './definitions';

export class FancyNotificationsPluginWeb extends WebPlugin implements FancyNotificationsPlugin {
    constructor() {
        super({
            name: 'FancyNotifications',
            platforms: ['web']
        });
    }

    clearBadgeCount(): Promise<any> {
        return undefined;
    }

    hasPermission(): Promise<{ value: boolean }> {
        return undefined;
    }

    requestPermission(): Promise<{ value: boolean }> {
        return undefined;
    }

    setBadgeCount(options: { count: number }): Promise<any> {
        console.log('setBadgeCount', options);
        return undefined;
    }
}

const FancyNotifications = new FancyNotificationsPluginWeb();

export { FancyNotifications };
