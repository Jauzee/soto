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

import SotoCore

/// Error enum for SNS
public struct SNSErrorType: AWSErrorType {
    enum Code: String {
        case authorizationErrorException = "AuthorizationError"
        case batchEntryIdsNotDistinctException = "BatchEntryIdsNotDistinct"
        case batchRequestTooLongException = "BatchRequestTooLong"
        case concurrentAccessException = "ConcurrentAccess"
        case emptyBatchRequestException = "EmptyBatchRequest"
        case endpointDisabledException = "EndpointDisabled"
        case filterPolicyLimitExceededException = "FilterPolicyLimitExceeded"
        case internalErrorException = "InternalError"
        case invalidBatchEntryIdException = "InvalidBatchEntryId"
        case invalidParameterException = "InvalidParameter"
        case invalidParameterValueException = "ParameterValueInvalid"
        case invalidSecurityException = "InvalidSecurity"
        case kMSAccessDeniedException = "KMSAccessDenied"
        case kMSDisabledException = "KMSDisabled"
        case kMSInvalidStateException = "KMSInvalidState"
        case kMSNotFoundException = "KMSNotFound"
        case kMSOptInRequired = "KMSOptInRequired"
        case kMSThrottlingException = "KMSThrottling"
        case notFoundException = "NotFound"
        case optedOutException = "OptedOut"
        case platformApplicationDisabledException = "PlatformApplicationDisabled"
        case resourceNotFoundException = "ResourceNotFound"
        case staleTagException = "StaleTag"
        case subscriptionLimitExceededException = "SubscriptionLimitExceeded"
        case tagLimitExceededException = "TagLimitExceeded"
        case tagPolicyException = "TagPolicy"
        case throttledException = "Throttled"
        case tooManyEntriesInBatchRequestException = "TooManyEntriesInBatchRequest"
        case topicLimitExceededException = "TopicLimitExceeded"
        case userErrorException = "UserError"
        case validationException = "ValidationException"
        case verificationException = "VerificationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SNS
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// Indicates that the user has been denied access to the requested resource.
    public static var authorizationErrorException: Self { .init(.authorizationErrorException) }
    /// Two or more batch entries in the request have the same Id.
    public static var batchEntryIdsNotDistinctException: Self { .init(.batchEntryIdsNotDistinctException) }
    /// The length of all the batch messages put together is more than the limit.
    public static var batchRequestTooLongException: Self { .init(.batchRequestTooLongException) }
    /// Can't perform multiple operations on a tag simultaneously. Perform the operations sequentially.
    public static var concurrentAccessException: Self { .init(.concurrentAccessException) }
    /// The batch request doesn't contain any entries.
    public static var emptyBatchRequestException: Self { .init(.emptyBatchRequestException) }
    /// Exception error indicating endpoint disabled.
    public static var endpointDisabledException: Self { .init(.endpointDisabledException) }
    /// Indicates that the number of filter polices in your Amazon Web Services account exceeds the limit. To add more filter polices, submit an Amazon SNS Limit Increase case in the Amazon Web Services Support Center.
    public static var filterPolicyLimitExceededException: Self { .init(.filterPolicyLimitExceededException) }
    /// Indicates an internal service error.
    public static var internalErrorException: Self { .init(.internalErrorException) }
    /// The Id of a batch entry in a batch request doesn't abide by the specification.
    public static var invalidBatchEntryIdException: Self { .init(.invalidBatchEntryIdException) }
    /// Indicates that a request parameter does not comply with the associated constraints.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// Indicates that a request parameter does not comply with the associated constraints.
    public static var invalidParameterValueException: Self { .init(.invalidParameterValueException) }
    /// The credential signature isn't valid. You must use an HTTPS endpoint and sign your request using Signature Version 4.
    public static var invalidSecurityException: Self { .init(.invalidSecurityException) }
    /// The ciphertext references a key that doesn't exist or that you don't have access to.
    public static var kMSAccessDeniedException: Self { .init(.kMSAccessDeniedException) }
    /// The request was rejected because the specified customer master key (CMK) isn't enabled.
    public static var kMSDisabledException: Self { .init(.kMSDisabledException) }
    /// The request was rejected because the state of the specified resource isn't valid for this request. For more information, see How Key State Affects Use of a Customer Master Key in the Key Management Service Developer Guide.
    public static var kMSInvalidStateException: Self { .init(.kMSInvalidStateException) }
    /// The request was rejected because the specified entity or resource can't be found.
    public static var kMSNotFoundException: Self { .init(.kMSNotFoundException) }
    /// The Amazon Web Services access key ID needs a subscription for the service.
    public static var kMSOptInRequired: Self { .init(.kMSOptInRequired) }
    /// The request was denied due to request throttling. For more information about throttling, see Limits in the Key Management Service Developer Guide.
    public static var kMSThrottlingException: Self { .init(.kMSThrottlingException) }
    /// Indicates that the requested resource does not exist.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// Indicates that the specified phone number opted out of receiving SMS messages from your Amazon Web Services account. You can't send SMS messages to phone numbers that opt out.
    public static var optedOutException: Self { .init(.optedOutException) }
    /// Exception error indicating platform application disabled.
    public static var platformApplicationDisabledException: Self { .init(.platformApplicationDisabledException) }
    /// Can’t perform the action on the specified resource. Make sure that the resource exists.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// A tag has been added to a resource with the same ARN as a deleted resource. Wait a short while and then retry the operation.
    public static var staleTagException: Self { .init(.staleTagException) }
    /// Indicates that the customer already owns the maximum allowed number of subscriptions.
    public static var subscriptionLimitExceededException: Self { .init(.subscriptionLimitExceededException) }
    /// Can't add more than 50 tags to a topic.
    public static var tagLimitExceededException: Self { .init(.tagLimitExceededException) }
    /// The request doesn't comply with the IAM tag policy. Correct your request and then retry it.
    public static var tagPolicyException: Self { .init(.tagPolicyException) }
    /// Indicates that the rate at which requests have been submitted for this action exceeds the limit for your Amazon Web Services account.
    public static var throttledException: Self { .init(.throttledException) }
    /// The batch request contains more entries than permissible.
    public static var tooManyEntriesInBatchRequestException: Self { .init(.tooManyEntriesInBatchRequestException) }
    /// Indicates that the customer already owns the maximum allowed number of topics.
    public static var topicLimitExceededException: Self { .init(.topicLimitExceededException) }
    /// Indicates that a request parameter does not comply with the associated constraints.
    public static var userErrorException: Self { .init(.userErrorException) }
    /// Indicates that a parameter in the request is invalid.
    public static var validationException: Self { .init(.validationException) }
    /// Indicates that the one-time password (OTP) used for verification is invalid.
    public static var verificationException: Self { .init(.verificationException) }
}

extension SNSErrorType: Equatable {
    public static func == (lhs: SNSErrorType, rhs: SNSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SNSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
