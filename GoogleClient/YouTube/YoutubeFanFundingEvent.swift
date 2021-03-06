//
//  YoutubeFanFundingEvent.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 7/11/16.
//  Copyright © 2016 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

/// A fanFundingEvent resource represents a fan funding event on a YouTube channel. Fan funding events occur when a user gives one-time monetary support to the channel owner.
public class YoutubeFanFundingEvent: GoogleObject {
	/// The snippet object contains basic details about the fan funding event.
	public var snippet: YoutubeFanFundingEventSnippet!
	/// Etag of this resource.
	public var etag: String!
	/// The ID that YouTube assigns to uniquely identify the fan funding event.
	public var id: String!
	/// Identifies what kind of resource this is. Value: the fixed string "youtube#fanFundingEvent".
	public var kind: String = "youtube#fanFundingEvent"
	
	public required init?(_ map: Map) {

	}

	public init() {

	}

	public func mapping(_ map: Map) {
		snippet <- map["snippet"]
		etag <- map["etag"]
		id <- map["id"]
		kind <- map["kind"]
	}
}

