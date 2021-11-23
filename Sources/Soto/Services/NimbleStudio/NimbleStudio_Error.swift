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

/// Error enum for NimbleStudio
public struct NimbleStudioErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerErrorException = "InternalServerErrorException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize NimbleStudio
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

    /// You are not authorized to perform this operation. Check your IAM policies, and ensure that you are using the correct access keys.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Another operation is in progress.
    public static var conflictException: Self { .init(.conflictException) }
    /// An internal error has occurred. Please retry your request.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// The specified resource could not be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Your current quota does not allow you to perform the request action. You can request increases for some quotas, and other quotas cannot be increased. Please use AWS Service Quotas to request an increase.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The request throughput limit was exceeded.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// One of the parameters in the request is invalid.
    public static var validationException: Self { .init(.validationException) }
}

extension NimbleStudioErrorType: Equatable {
    public static func == (lhs: NimbleStudioErrorType, rhs: NimbleStudioErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension NimbleStudioErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
