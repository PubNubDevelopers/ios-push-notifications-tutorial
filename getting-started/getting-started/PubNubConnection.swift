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
    private static let PUBNUB_PUBLISH_KEY = "pub-c-7ae1c68f-8009-470a-83d6-b14848591f3a"
    private static let PUBNUB_SUBSCRIBE_KEY = "sub-c-a7cb2610-ad18-4a4a-a5db-188271558045"
    static let shared : PubNub = PubNub(
        configuration: PubNubConfiguration(
          publishKey: PUBNUB_PUBLISH_KEY,
          subscribeKey: PUBNUB_SUBSCRIBE_KEY,
          uuid: String(NSUUID().uuidString.prefix(6)) // UUID will be first 6 characters
        ))
    private init() {}
}
