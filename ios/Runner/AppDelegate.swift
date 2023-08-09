import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        // Extract DART_DEFINES from Info.plist and convert them into a dictionary.
        if let dartDefinesString = Bundle.main.infoDictionary?["DART_DEFINES"] as? String {
            var dartDefinesDictionary = [String:String]()
            for definedValue in dartDefinesString.components(separatedBy: ",") {
                let decoded = String(data: Data(base64Encoded: definedValue)!, encoding: .utf8)!
                let values = decoded.components(separatedBy: "=")
                dartDefinesDictionary[values[0]] = values[1]
            }
            // You can now use the 'dartDefinesDictionary' to get your defines.
            // For example: let apiEndpoint = dartDefinesDictionary["API_ENDPOINT"]
        }
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
