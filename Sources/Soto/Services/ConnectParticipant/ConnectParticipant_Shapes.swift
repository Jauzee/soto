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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import Foundation
import SotoCore

extension ConnectParticipant {
    // MARK: Enums

    public enum ArtifactStatus: String, CustomStringConvertible, Codable {
        case approved = "APPROVED"
        case inProgress = "IN_PROGRESS"
        case rejected = "REJECTED"
        public var description: String { return self.rawValue }
    }

    public enum ChatItemType: String, CustomStringConvertible, Codable {
        case attachment = "ATTACHMENT"
        case chatEnded = "CHAT_ENDED"
        case connectionAck = "CONNECTION_ACK"
        case event = "EVENT"
        case message = "MESSAGE"
        case participantJoined = "PARTICIPANT_JOINED"
        case participantLeft = "PARTICIPANT_LEFT"
        case transferFailed = "TRANSFER_FAILED"
        case transferSucceeded = "TRANSFER_SUCCEEDED"
        case typing = "TYPING"
        public var description: String { return self.rawValue }
    }

    public enum ConnectionType: String, CustomStringConvertible, Codable {
        case connectionCredentials = "CONNECTION_CREDENTIALS"
        case websocket = "WEBSOCKET"
        public var description: String { return self.rawValue }
    }

    public enum ParticipantRole: String, CustomStringConvertible, Codable {
        case agent = "AGENT"
        case customer = "CUSTOMER"
        case system = "SYSTEM"
        public var description: String { return self.rawValue }
    }

    public enum ScanDirection: String, CustomStringConvertible, Codable {
        case backward = "BACKWARD"
        case forward = "FORWARD"
        public var description: String { return self.rawValue }
    }

    public enum SortKey: String, CustomStringConvertible, Codable {
        case ascending = "ASCENDING"
        case descending = "DESCENDING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct AttachmentItem: AWSDecodableShape {
        /// A unique identifier for the attachment.
        public let attachmentId: String?
        /// A case-sensitive name of the attachment being uploaded.
        public let attachmentName: String?
        /// Describes the MIME file type of the attachment. For a list of supported file types, see Feature specifications in the Amazon Connect Administrator Guide.
        public let contentType: String?
        /// Status of the attachment.
        public let status: ArtifactStatus?

        public init(attachmentId: String? = nil, attachmentName: String? = nil, contentType: String? = nil, status: ArtifactStatus? = nil) {
            self.attachmentId = attachmentId
            self.attachmentName = attachmentName
            self.contentType = contentType
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case attachmentId = "AttachmentId"
            case attachmentName = "AttachmentName"
            case contentType = "ContentType"
            case status = "Status"
        }
    }

    public struct CompleteAttachmentUploadRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// A list of unique identifiers for the attachments.
        public let attachmentIds: [String]
        /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientToken: String
        /// The authentication token associated with the participant's connection.
        public let connectionToken: String

        public init(attachmentIds: [String], clientToken: String = CompleteAttachmentUploadRequest.idempotencyToken(), connectionToken: String) {
            self.attachmentIds = attachmentIds
            self.clientToken = clientToken
            self.connectionToken = connectionToken
        }

        public func validate(name: String) throws {
            try self.attachmentIds.forEach {
                try validate($0, name: "attachmentIds[]", parent: name, max: 256)
                try validate($0, name: "attachmentIds[]", parent: name, min: 1)
            }
            try self.validate(self.attachmentIds, name: "attachmentIds", parent: name, max: 1)
            try self.validate(self.attachmentIds, name: "attachmentIds", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 500)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case attachmentIds = "AttachmentIds"
            case clientToken = "ClientToken"
        }
    }

    public struct CompleteAttachmentUploadResponse: AWSDecodableShape {
        public init() {}
    }

    public struct ConnectionCredentials: AWSDecodableShape {
        /// The connection token.
        public let connectionToken: String?
        /// The expiration of the token. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let expiry: String?

        public init(connectionToken: String? = nil, expiry: String? = nil) {
            self.connectionToken = connectionToken
            self.expiry = expiry
        }

        private enum CodingKeys: String, CodingKey {
            case connectionToken = "ConnectionToken"
            case expiry = "Expiry"
        }
    }

    public struct CreateParticipantConnectionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "participantToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// Amazon Connect Participant is used to mark the participant as connected for message streaming.
        public let connectParticipant: Bool?
        /// This is a header parameter. The ParticipantToken as obtained from StartChatContact API response.
        public let participantToken: String
        /// Type of connection information required.
        public let type: [ConnectionType]

        public init(connectParticipant: Bool? = nil, participantToken: String, type: [ConnectionType]) {
            self.connectParticipant = connectParticipant
            self.participantToken = participantToken
            self.type = type
        }

        public func validate(name: String) throws {
            try self.validate(self.participantToken, name: "participantToken", parent: name, max: 1000)
            try self.validate(self.participantToken, name: "participantToken", parent: name, min: 1)
            try self.validate(self.type, name: "type", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case connectParticipant = "ConnectParticipant"
            case type = "Type"
        }
    }

    public struct CreateParticipantConnectionResponse: AWSDecodableShape {
        /// Creates the participant's connection credentials. The authentication token associated with the participant's connection.
        public let connectionCredentials: ConnectionCredentials?
        /// Creates the participant's websocket connection.
        public let websocket: Websocket?

        public init(connectionCredentials: ConnectionCredentials? = nil, websocket: Websocket? = nil) {
            self.connectionCredentials = connectionCredentials
            self.websocket = websocket
        }

        private enum CodingKeys: String, CodingKey {
            case connectionCredentials = "ConnectionCredentials"
            case websocket = "Websocket"
        }
    }

    public struct DisconnectParticipantRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientToken: String?
        /// The authentication token associated with the participant's connection.
        public let connectionToken: String

        public init(clientToken: String? = DisconnectParticipantRequest.idempotencyToken(), connectionToken: String) {
            self.clientToken = clientToken
            self.connectionToken = connectionToken
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 500)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
        }
    }

    public struct DisconnectParticipantResponse: AWSDecodableShape {
        public init() {}
    }

    public struct GetAttachmentRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// A unique identifier for the attachment.
        public let attachmentId: String
        /// The authentication token associated with the participant's connection.
        public let connectionToken: String

        public init(attachmentId: String, connectionToken: String) {
            self.attachmentId = attachmentId
            self.connectionToken = connectionToken
        }

        public func validate(name: String) throws {
            try self.validate(self.attachmentId, name: "attachmentId", parent: name, max: 256)
            try self.validate(self.attachmentId, name: "attachmentId", parent: name, min: 1)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case attachmentId = "AttachmentId"
        }
    }

    public struct GetAttachmentResponse: AWSDecodableShape {
        /// This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response to StartAttachmentUpload.
        public let url: String?
        /// The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let urlExpiry: String?

        public init(url: String? = nil, urlExpiry: String? = nil) {
            self.url = url
            self.urlExpiry = urlExpiry
        }

        private enum CodingKeys: String, CodingKey {
            case url = "Url"
            case urlExpiry = "UrlExpiry"
        }
    }

    public struct GetTranscriptRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// The authentication token associated with the participant's connection.
        public let connectionToken: String
        /// The contactId from the current contact chain for which transcript is needed.
        public let contactId: String?
        /// The maximum number of results to return in the page. Default: 10.
        public let maxResults: Int?
        /// The pagination token. Use the value returned previously in the next subsequent request to retrieve the next set of results.
        public let nextToken: String?
        /// The direction from StartPosition from which to retrieve message. Default: BACKWARD when no StartPosition is provided, FORWARD with StartPosition.
        public let scanDirection: ScanDirection?
        /// The sort order for the records. Default: DESCENDING.
        public let sortOrder: SortKey?
        /// A filtering option for where to start.
        public let startPosition: StartPosition?

        public init(connectionToken: String, contactId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, scanDirection: ScanDirection? = nil, sortOrder: SortKey? = nil, startPosition: StartPosition? = nil) {
            self.connectionToken = connectionToken
            self.contactId = contactId
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.scanDirection = scanDirection
            self.sortOrder = sortOrder
            self.startPosition = startPosition
        }

        public func validate(name: String) throws {
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
            try self.validate(self.contactId, name: "contactId", parent: name, max: 256)
            try self.validate(self.contactId, name: "contactId", parent: name, min: 1)
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1000)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.startPosition?.validate(name: "\(name).startPosition")
        }

        private enum CodingKeys: String, CodingKey {
            case contactId = "ContactId"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case scanDirection = "ScanDirection"
            case sortOrder = "SortOrder"
            case startPosition = "StartPosition"
        }
    }

    public struct GetTranscriptResponse: AWSDecodableShape {
        /// The initial contact ID for the contact.
        public let initialContactId: String?
        /// The pagination token. Use the value returned previously in the next subsequent request to retrieve the next set of results.
        public let nextToken: String?
        /// The list of messages in the session.
        public let transcript: [Item]?

        public init(initialContactId: String? = nil, nextToken: String? = nil, transcript: [Item]? = nil) {
            self.initialContactId = initialContactId
            self.nextToken = nextToken
            self.transcript = transcript
        }

        private enum CodingKeys: String, CodingKey {
            case initialContactId = "InitialContactId"
            case nextToken = "NextToken"
            case transcript = "Transcript"
        }
    }

    public struct Item: AWSDecodableShape {
        /// The time when the message or event was sent. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let absoluteTime: String?
        /// Provides information about the attachments.
        public let attachments: [AttachmentItem]?
        /// The content of the message or event.
        public let content: String?
        /// The type of content of the item.
        public let contentType: String?
        /// The chat display name of the sender.
        public let displayName: String?
        /// The ID of the item.
        public let id: String?
        /// The ID of the sender in the session.
        public let participantId: String?
        /// The role of the sender. For example, is it a customer, agent, or system.
        public let participantRole: ParticipantRole?
        /// Type of the item: message or event.
        public let type: ChatItemType?

        public init(absoluteTime: String? = nil, attachments: [AttachmentItem]? = nil, content: String? = nil, contentType: String? = nil, displayName: String? = nil, id: String? = nil, participantId: String? = nil, participantRole: ParticipantRole? = nil, type: ChatItemType? = nil) {
            self.absoluteTime = absoluteTime
            self.attachments = attachments
            self.content = content
            self.contentType = contentType
            self.displayName = displayName
            self.id = id
            self.participantId = participantId
            self.participantRole = participantRole
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case absoluteTime = "AbsoluteTime"
            case attachments = "Attachments"
            case content = "Content"
            case contentType = "ContentType"
            case displayName = "DisplayName"
            case id = "Id"
            case participantId = "ParticipantId"
            case participantRole = "ParticipantRole"
            case type = "Type"
        }
    }

    public struct SendEventRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientToken: String?
        /// The authentication token associated with the participant's connection.
        public let connectionToken: String
        /// The content of the event to be sent (for example, message text). This is not yet supported.
        public let content: String?
        /// The content type of the request. Supported types are:   application/vnd.amazonaws.connect.event.typing   application/vnd.amazonaws.connect.event.connection.acknowledged
        public let contentType: String

        public init(clientToken: String? = SendEventRequest.idempotencyToken(), connectionToken: String, content: String? = nil, contentType: String) {
            self.clientToken = clientToken
            self.connectionToken = connectionToken
            self.content = content
            self.contentType = contentType
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 500)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
            try self.validate(self.content, name: "content", parent: name, max: 1024)
            try self.validate(self.content, name: "content", parent: name, min: 1)
            try self.validate(self.contentType, name: "contentType", parent: name, max: 100)
            try self.validate(self.contentType, name: "contentType", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case content = "Content"
            case contentType = "ContentType"
        }
    }

    public struct SendEventResponse: AWSDecodableShape {
        /// The time when the event was sent. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let absoluteTime: String?
        /// The ID of the response.
        public let id: String?

        public init(absoluteTime: String? = nil, id: String? = nil) {
            self.absoluteTime = absoluteTime
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case absoluteTime = "AbsoluteTime"
            case id = "Id"
        }
    }

    public struct SendMessageRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientToken: String?
        /// The authentication token associated with the connection.
        public let connectionToken: String
        /// The content of the message.
        public let content: String
        /// The type of the content. Supported types are text/plain.
        public let contentType: String

        public init(clientToken: String? = SendMessageRequest.idempotencyToken(), connectionToken: String, content: String, contentType: String) {
            self.clientToken = clientToken
            self.connectionToken = connectionToken
            self.content = content
            self.contentType = contentType
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 500)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
            try self.validate(self.content, name: "content", parent: name, max: 1024)
            try self.validate(self.content, name: "content", parent: name, min: 1)
            try self.validate(self.contentType, name: "contentType", parent: name, max: 100)
            try self.validate(self.contentType, name: "contentType", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case content = "Content"
            case contentType = "ContentType"
        }
    }

    public struct SendMessageResponse: AWSDecodableShape {
        /// The time when the message was sent. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let absoluteTime: String?
        /// The ID of the message.
        public let id: String?

        public init(absoluteTime: String? = nil, id: String? = nil) {
            self.absoluteTime = absoluteTime
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case absoluteTime = "AbsoluteTime"
            case id = "Id"
        }
    }

    public struct StartAttachmentUploadRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// A case-sensitive name of the attachment being uploaded.
        public let attachmentName: String
        /// The size of the attachment in bytes.
        public let attachmentSizeInBytes: Int64
        /// A unique case sensitive identifier to support idempotency of request.
        public let clientToken: String
        /// The authentication token associated with the participant's connection.
        public let connectionToken: String
        /// Describes the MIME file type of the attachment. For a list of supported file types, see Feature specifications in the Amazon Connect Administrator Guide.
        public let contentType: String

        public init(attachmentName: String, attachmentSizeInBytes: Int64, clientToken: String = StartAttachmentUploadRequest.idempotencyToken(), connectionToken: String, contentType: String) {
            self.attachmentName = attachmentName
            self.attachmentSizeInBytes = attachmentSizeInBytes
            self.clientToken = clientToken
            self.connectionToken = connectionToken
            self.contentType = contentType
        }

        public func validate(name: String) throws {
            try self.validate(self.attachmentName, name: "attachmentName", parent: name, max: 256)
            try self.validate(self.attachmentName, name: "attachmentName", parent: name, min: 1)
            try self.validate(self.attachmentSizeInBytes, name: "attachmentSizeInBytes", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 500)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try self.validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
            try self.validate(self.contentType, name: "contentType", parent: name, max: 255)
            try self.validate(self.contentType, name: "contentType", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case attachmentName = "AttachmentName"
            case attachmentSizeInBytes = "AttachmentSizeInBytes"
            case clientToken = "ClientToken"
            case contentType = "ContentType"
        }
    }

    public struct StartAttachmentUploadResponse: AWSDecodableShape {
        /// A unique identifier for the attachment.
        public let attachmentId: String?
        /// Fields to be used while uploading the attachment.
        public let uploadMetadata: UploadMetadata?

        public init(attachmentId: String? = nil, uploadMetadata: UploadMetadata? = nil) {
            self.attachmentId = attachmentId
            self.uploadMetadata = uploadMetadata
        }

        private enum CodingKeys: String, CodingKey {
            case attachmentId = "AttachmentId"
            case uploadMetadata = "UploadMetadata"
        }
    }

    public struct StartPosition: AWSEncodableShape {
        /// The time in ISO format where to start. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let absoluteTime: String?
        /// The ID of the message or event where to start.
        public let id: String?
        /// The start position of the most recent message where you want to start.
        public let mostRecent: Int?

        public init(absoluteTime: String? = nil, id: String? = nil, mostRecent: Int? = nil) {
            self.absoluteTime = absoluteTime
            self.id = id
            self.mostRecent = mostRecent
        }

        public func validate(name: String) throws {
            try self.validate(self.absoluteTime, name: "absoluteTime", parent: name, max: 100)
            try self.validate(self.absoluteTime, name: "absoluteTime", parent: name, min: 1)
            try self.validate(self.id, name: "id", parent: name, max: 256)
            try self.validate(self.id, name: "id", parent: name, min: 1)
            try self.validate(self.mostRecent, name: "mostRecent", parent: name, max: 100)
            try self.validate(self.mostRecent, name: "mostRecent", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case absoluteTime = "AbsoluteTime"
            case id = "Id"
            case mostRecent = "MostRecent"
        }
    }

    public struct UploadMetadata: AWSDecodableShape {
        /// The headers to be provided while uploading the file to the URL.
        public let headersToInclude: [String: String]?
        /// This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response to StartAttachmentUpload.
        public let url: String?
        /// The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let urlExpiry: String?

        public init(headersToInclude: [String: String]? = nil, url: String? = nil, urlExpiry: String? = nil) {
            self.headersToInclude = headersToInclude
            self.url = url
            self.urlExpiry = urlExpiry
        }

        private enum CodingKeys: String, CodingKey {
            case headersToInclude = "HeadersToInclude"
            case url = "Url"
            case urlExpiry = "UrlExpiry"
        }
    }

    public struct Websocket: AWSDecodableShape {
        /// The URL expiration timestamp in ISO date format. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let connectionExpiry: String?
        /// The URL of the websocket.
        public let url: String?

        public init(connectionExpiry: String? = nil, url: String? = nil) {
            self.connectionExpiry = connectionExpiry
            self.url = url
        }

        private enum CodingKeys: String, CodingKey {
            case connectionExpiry = "ConnectionExpiry"
            case url = "Url"
        }
    }
}
