//
// Please report any problems with this app template to contact@estimote.com
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, ESTBeaconManagerDelegate {

    var window: UIWindow?

    let beaconNotificationsManager = BeaconNotificationsManager()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        ESTConfig.setupAppID("enternotification-2fo", andAppToken: "24375367da970b7d73f9bc21c29d92fa")

        self.beaconNotificationsManager.enableNotifications(
            for: BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 53161, minor: 61673),
            enterMessage: "Hello Saleh, You've just visited the RED beacon.",
            exitMessage: "Goodbye from the RED beacon, please come back again!"
        )
        
        self.beaconNotificationsManager.enableNotifications(
            for: BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 5629, minor: 9877),
            enterMessage: "Hello Saleh, You've just visited the YELLOW beacon.",
            exitMessage: "Goodbye from the YELLOW beacon, please come back again!"
        )
        
        self.beaconNotificationsManager.enableNotifications(
            for: BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 7518, minor: 15354),
            enterMessage: "Hello Saleh, You've just visited the MAGENTA beacon.",
            exitMessage: "Goodbye from the MAGENTA beacon, please come back again!"
        )

        // NOTE: "exit" event has a built-in delay of 30 seconds, to make sure that the user has really exited the beacon's range. The delay is imposed by iOS and is non-adjustable.

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}
