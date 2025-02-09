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

import SotoCore

/// Error enum for Location
public struct LocationErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Location
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

    /// The request was denied because of insufficient access or permissions. Check with an administrator to verify your permissions.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request was unsuccessful because of a conflict.
    public static var conflictException: Self { .init(.conflictException) }
    /// The request has failed to process because of an unknown server error, exception, or failure.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The resource that you've entered was not found in your AWS account.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The operation was denied because the request would exceed the maximum quota set for Amazon Location Service.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The request was denied because of request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The input failed to meet the constraints specified by the AWS service.
    public static var validationException: Self { .init(.validationException) }
}

extension LocationErrorType: Equatable {
    public static func == (lhs: LocationErrorType, rhs: LocationErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension LocationErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
