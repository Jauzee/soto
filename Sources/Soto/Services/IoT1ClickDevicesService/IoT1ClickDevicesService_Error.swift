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

/// Error enum for IoT1ClickDevicesService
public struct IoT1ClickDevicesServiceErrorType: AWSErrorType {
    enum Code: String {
        case forbiddenException = "ForbiddenException"
        case internalFailureException = "InternalFailureException"
        case invalidRequestException = "InvalidRequestException"
        case preconditionFailedException = "PreconditionFailedException"
        case rangeNotSatisfiableException = "RangeNotSatisfiableException"
        case resourceConflictException = "ResourceConflictException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoT1ClickDevicesService
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

    public static var forbiddenException: Self { .init(.forbiddenException) }
    public static var internalFailureException: Self { .init(.internalFailureException) }
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    public static var preconditionFailedException: Self { .init(.preconditionFailedException) }
    public static var rangeNotSatisfiableException: Self { .init(.rangeNotSatisfiableException) }
    public static var resourceConflictException: Self { .init(.resourceConflictException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension IoT1ClickDevicesServiceErrorType: Equatable {
    public static func == (lhs: IoT1ClickDevicesServiceErrorType, rhs: IoT1ClickDevicesServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoT1ClickDevicesServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
