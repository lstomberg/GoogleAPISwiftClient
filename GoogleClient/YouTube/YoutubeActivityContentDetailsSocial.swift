//
//  YoutubeActivityContentDetailsSocial.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/18/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class YoutubeActivityContentDetailsSocial: Mappable {
	/// The author of the social network post.
	public var author: String!
	/// The URL of the social network post.
	public var referenceUrl: String!
	/// The resourceId object encapsulates information that identifies the resource associated with a social network post.
	public var resourceId: YoutubeResourceId!
	/// An image of the post's author.
	public var imageUrl: String!
	/// The name of the social network.
	public var type: YoutubeActivityContentDetailsSocialType!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		author <- map["author"]
		referenceUrl <- map["referenceUrl"]
		resourceId <- map["resourceId"]
		imageUrl <- map["imageUrl"]
		type <- map["type"]
	}
}

