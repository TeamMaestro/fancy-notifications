# Capacitor Fancy Notifications

[![npm](https://img.shields.io/npm/v/fancy-notifications.svg)](https://www.npmjs.com/package/fancy-notifications)
[![npm](https://img.shields.io/npm/dt/fancy-notifications.svg?label=npm%20downloads)](https://www.npmjs.com/package/fancy-notifications)

## Installation

- `npm i fancy-notifications`

## Usage


```typescript
import { Plugins } from '@capacitor/core';
const { FancyNotifications } = Plugins;
async function updateBadgeCount() {
  const check = await FancyNotifications.hasPermission();
  if (check.value) {
    FancyNotifications.setBadgeCount({ count: 2 });
  } else {
    const request = await FancyNotifications.requestPermission();
    if(request.value) {
      FancyNotifications.setBadgeCount({ count: 2 });
    } else {
      // User failed to grant permission show some dialog
    }
  }
}


```

## Api

| Method                                               | Default | Type                      | Description                 |
| ---------------------------------------------------- | ------- | ------------------------- | --------------------------- |
| hasPermission |         | `Promise<{value:boolean}>` |  |
| requestPermission |         | `Promise<{value:boolean}>` |  |
| setBadgeCount |         | `Promise<any>` |  |
| clearBadgeCount |         | `Promise<any>` |  |

## TODO

- [ ] Add Notifications Support
