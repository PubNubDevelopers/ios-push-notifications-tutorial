//
//  PubNubObj.swift
//  getting-started
//
//  Used to provide a globally accessible, shared instance of a class.
//  Useful for adding more screens to application.
//  Created by Oliver Carson on 7/14/22.
//

import Foundation
import PubNub

final class PubNubConnection {
    private static let PUBNUB_PUBLISH_KEY = "myPublishKey"
    private static let PUBNUB_SUBSCRIBE_KEY = "mySubscribeKey"
    static let shared : PubNub = PubNub(
        configuration: PubNubConfiguration(
          publishKey: PUBNUB_PUBLISH_KEY,
          subscribeKey: PUBNUB_SUBSCRIBE_KEY,
          uuid: String(NSUUID().uuidString.prefix(6)) // UUID will be first 6 characters
        ))
    private init() {}
}
