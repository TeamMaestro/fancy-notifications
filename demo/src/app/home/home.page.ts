import { Component } from '@angular/core';
import { Plugins } from '@capacitor/core';

const {FancyNotifications} = Plugins;

@Component({
    selector: 'app-home',
    templateUrl: 'home.page.html',
    styleUrls: ['home.page.scss'],
})
export class HomePage {

    async setup() {
        const permission = await FancyNotifications.hasPermission();
        if (!permission.value) {
            const request = await FancyNotifications.requestPermission();
            return request.value;
        }
        return true;
    }

    async clearCount() {
        const has = await this.setup();
        if (has) {
            await FancyNotifications.clearBadgeCount();
        }
    }

    async setCount(count) {
        const has = await this.setup();
        if (has) {
            await FancyNotifications.setBadgeCount({count: parseInt(count)})
        }
    }
}
