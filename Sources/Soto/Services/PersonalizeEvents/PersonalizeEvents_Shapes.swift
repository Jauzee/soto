//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import Foundation
import SotoCore

extension PersonalizeEvents {
    // MARK: Enums

    // MARK: Shapes

    public struct Event: AWSEncodableShape {
        /// An ID associated with the event. If an event ID is not provided, Amazon Personalize generates a unique ID for the event. An event ID is not used as an input to the model. Amazon Personalize uses the event ID to distinquish unique events. Any subsequent events after the first with the same event ID are not used in model training.
        public let eventId: String?
        /// The type of event, such as click or download. This property corresponds to the EVENT_TYPE field of your Interactions schema and depends on the types of events you are tracking.
        public let eventType: String
        /// The event value that corresponds to the EVENT_VALUE field of the Interactions schema.
        public let eventValue: Float?
        /// A list of item IDs that represents the sequence of items you have shown the user. For example, ["itemId1", "itemId2", "itemId3"].
        public let impression: [String]?
        /// The item ID key that corresponds to the ITEM_ID field of the Interactions schema.
        public let itemId: String?
        /// A string map of event-specific data that you might choose to record. For example, if a user rates a movie on your site, other than movie ID (itemId) and rating (eventValue) , you might also send the number of movie ratings made by the user. Each item in the map consists of a key-value pair. For example,   {"numberOfRatings": "12"}  The keys use camel case names that match the fields in the Interactions schema. In the above example, the numberOfRatings would match the 'NUMBER_OF_RATINGS' field defined in the Interactions schema.
        public let properties: String?
        /// The ID of the recommendation.
        public let recommendationId: String?
        /// The timestamp (in Unix time) on the client side when the event occurred.
        public let sentAt: Date

        public init(eventId: String? = nil, eventType: String, eventValue: Float? = nil, impression: [String]? = nil, itemId: String? = nil, properties: String? = nil, recommendationId: String? = nil, sentAt: Date) {
            self.eventId = eventId
            self.eventType = eventType
            self.eventValue = eventValue
            self.impression = impression
            self.itemId = itemId
            self.properties = properties
            self.recommendationId = recommendationId
            self.sentAt = sentAt
        }

        public func validate(name: String) throws {
            try self.validate(self.eventId, name: "eventId", parent: name, max: 256)
            try self.validate(self.eventId, name: "eventId", parent: name, min: 1)
            try self.validate(self.eventType, name: "eventType", parent: name, max: 256)
            try self.validate(self.eventType, name: "eventType", parent: name, min: 1)
            try self.impression?.forEach {
                try validate($0, name: "impression[]", parent: name, max: 256)
                try validate($0, name: "impression[]", parent: name, min: 1)
            }
            try self.validate(self.impression, name: "impression", parent: name, max: 25)
            try self.validate(self.impression, name: "impression", parent: name, min: 1)
            try self.validate(self.itemId, name: "itemId", parent: name, max: 256)
            try self.validate(self.itemId, name: "itemId", parent: name, min: 1)
            try self.validate(self.properties, name: "properties", parent: name, max: 1024)
            try self.validate(self.properties, name: "properties", parent: name, min: 1)
            try self.validate(self.recommendationId, name: "recommendationId", parent: name, max: 40)
            try self.validate(self.recommendationId, name: "recommendationId", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case eventId
            case eventType
            case eventValue
            case impression
            case itemId
            case properties
            case recommendationId
            case sentAt
        }
    }

    public struct Item: AWSEncodableShape {
        /// The ID associated with the item.
        public let itemId: String
        /// A string map of item-specific metadata. Each element in the map consists of a key-value pair.  For example, {"numberOfRatings": "12"}. The keys use camel case names that match the fields in the schema for the Items dataset. In the previous example, the numberOfRatings matches the 'NUMBER_OF_RATINGS' field defined in the Items schema. For categorical string data, to include multiple categories for a single item,  separate each category with a pipe separator (|). For example, \"Horror|Action\".
        public let properties: String?

        public init(itemId: String, properties: String? = nil) {
            self.itemId = itemId
            self.properties = properties
        }

        public func validate(name: String) throws {
            try self.validate(self.itemId, name: "itemId", parent: name, max: 256)
            try self.validate(self.itemId, name: "itemId", parent: name, min: 1)
            try self.validate(self.properties, name: "properties", parent: name, max: 24262)
            try self.validate(self.properties, name: "properties", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case itemId
            case properties
        }
    }

    public struct PutEventsRequest: AWSEncodableShape {
        /// A list of event data from the session.
        public let eventList: [Event]
        /// The session ID associated with the user's visit. Your application generates the sessionId when a user first visits your website or uses your application.  Amazon Personalize uses the sessionId to associate events with the user before they log in. For more information, see  Recording Events.
        public let sessionId: String
        /// The tracking ID for the event. The ID is generated by a call to the CreateEventTracker API.
        public let trackingId: String
        /// The user associated with the event.
        public let userId: String?

        public init(eventList: [Event], sessionId: String, trackingId: String, userId: String? = nil) {
            self.eventList = eventList
            self.sessionId = sessionId
            self.trackingId = trackingId
            self.userId = userId
        }

        public func validate(name: String) throws {
            try self.eventList.forEach {
                try $0.validate(name: "\(name).eventList[]")
            }
            try self.validate(self.eventList, name: "eventList", parent: name, max: 10)
            try self.validate(self.eventList, name: "eventList", parent: name, min: 1)
            try self.validate(self.sessionId, name: "sessionId", parent: name, max: 256)
            try self.validate(self.sessionId, name: "sessionId", parent: name, min: 1)
            try self.validate(self.trackingId, name: "trackingId", parent: name, max: 256)
            try self.validate(self.trackingId, name: "trackingId", parent: name, min: 1)
            try self.validate(self.userId, name: "userId", parent: name, max: 256)
            try self.validate(self.userId, name: "userId", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case eventList
            case sessionId
            case trackingId
            case userId
        }
    }

    public struct PutItemsRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the Items dataset you are adding the item or items to.
        public let datasetArn: String
        /// A list of item data.
        public let items: [Item]

        public init(datasetArn: String, items: [Item]) {
            self.datasetArn = datasetArn
            self.items = items
        }

        public func validate(name: String) throws {
            try self.validate(self.datasetArn, name: "datasetArn", parent: name, max: 256)
            try self.validate(self.datasetArn, name: "datasetArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.items.forEach {
                try $0.validate(name: "\(name).items[]")
            }
            try self.validate(self.items, name: "items", parent: name, max: 10)
            try self.validate(self.items, name: "items", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case datasetArn
            case items
        }
    }

    public struct PutUsersRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the Users dataset you are adding the user or users to.
        public let datasetArn: String
        /// A list of user data.
        public let users: [User]

        public init(datasetArn: String, users: [User]) {
            self.datasetArn = datasetArn
            self.users = users
        }

        public func validate(name: String) throws {
            try self.validate(self.datasetArn, name: "datasetArn", parent: name, max: 256)
            try self.validate(self.datasetArn, name: "datasetArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.users.forEach {
                try $0.validate(name: "\(name).users[]")
            }
            try self.validate(self.users, name: "users", parent: name, max: 10)
            try self.validate(self.users, name: "users", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case datasetArn
            case users
        }
    }

    public struct User: AWSEncodableShape {
        /// A string map of user-specific metadata. Each element in the map consists of a key-value pair.  For example, {"numberOfVideosWatched": "45"}. The keys use camel case names that match the fields in the schema for the Users dataset. In the previous example, the numberOfVideosWatched matches the 'NUMBER_OF_VIDEOS_WATCHED' field defined in the Users schema. For categorical string data,  to include multiple categories for a single user, separate each category with a pipe separator (|).  For example, \"Member|Frequent shopper\".
        public let properties: String?
        /// The ID associated with the user.
        public let userId: String

        public init(properties: String? = nil, userId: String) {
            self.properties = properties
            self.userId = userId
        }

        public func validate(name: String) throws {
            try self.validate(self.properties, name: "properties", parent: name, max: 4096)
            try self.validate(self.properties, name: "properties", parent: name, min: 1)
            try self.validate(self.userId, name: "userId", parent: name, max: 256)
            try self.validate(self.userId, name: "userId", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case properties
            case userId
        }
    }
}
