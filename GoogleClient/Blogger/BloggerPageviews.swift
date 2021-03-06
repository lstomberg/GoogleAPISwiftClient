//
//  BloggerPageviews.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 7/11/16.
//  Copyright © 2016 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

/// The Counts subtype of the Pageviews model type for use with the Blogger API
public class BloggerPageviewsCount: ObjectType {
	/// Time range the given count applies to
	public var timeRange: String!
	/// Count of page views for the given time range
	public var count: Int64!
	
	public required init?(_ map: Map) {

	}

	public init() {

	}

	public func mapping(_ map: Map) {
		timeRange <- map["timeRange"]
		count <- map["count"]
	}
}

/// The Pageviews model type for use with the Blogger API
public class BloggerPageviews: GoogleObject {
	/// Blog Id
	public var blogId: String!
	/// The container of posts in this blog.
	public var counts: [BloggerPageviewsCount]!
	/// The kind of this entry. Always blogger#page_views
	public var kind: String = "blogger#page_views"
	
	public required init?(_ map: Map) {

	}

	public init() {

	}

	public func mapping(_ map: Map) {
		blogId <- map["blogId"]
		counts <- map["counts"]
		kind <- map["kind"]
	}
}

