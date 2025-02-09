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

/// Error enum for GlobalAccelerator
public struct GlobalAcceleratorErrorType: AWSErrorType {
    enum Code: String {
        case acceleratorNotDisabledException = "AcceleratorNotDisabledException"
        case acceleratorNotFoundException = "AcceleratorNotFoundException"
        case accessDeniedException = "AccessDeniedException"
        case associatedEndpointGroupFoundException = "AssociatedEndpointGroupFoundException"
        case associatedListenerFoundException = "AssociatedListenerFoundException"
        case byoipCidrNotFoundException = "ByoipCidrNotFoundException"
        case conflictException = "ConflictException"
        case endpointAlreadyExistsException = "EndpointAlreadyExistsException"
        case endpointGroupAlreadyExistsException = "EndpointGroupAlreadyExistsException"
        case endpointGroupNotFoundException = "EndpointGroupNotFoundException"
        case endpointNotFoundException = "EndpointNotFoundException"
        case incorrectCidrStateException = "IncorrectCidrStateException"
        case internalServiceErrorException = "InternalServiceErrorException"
        case invalidArgumentException = "InvalidArgumentException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidPortRangeException = "InvalidPortRangeException"
        case limitExceededException = "LimitExceededException"
        case listenerNotFoundException = "ListenerNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize GlobalAccelerator
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

    /// The accelerator that you specified could not be disabled.
    public static var acceleratorNotDisabledException: Self { .init(.acceleratorNotDisabledException) }
    /// The accelerator that you specified doesn't exist.
    public static var acceleratorNotFoundException: Self { .init(.acceleratorNotFoundException) }
    /// You don't have access permission.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The listener that you specified has an endpoint group associated with it. You must remove all dependent resources
    /// 			from a listener before you can delete it.
    public static var associatedEndpointGroupFoundException: Self { .init(.associatedEndpointGroupFoundException) }
    /// The accelerator that you specified has a listener associated with it. You must remove all dependent resources from an
    /// 			accelerator before you can delete it.
    public static var associatedListenerFoundException: Self { .init(.associatedListenerFoundException) }
    /// The CIDR that you specified was not found or is incorrect.
    public static var byoipCidrNotFoundException: Self { .init(.byoipCidrNotFoundException) }
    /// You can't use both of those options.
    public static var conflictException: Self { .init(.conflictException) }
    /// The endpoint that you specified doesn't exist.
    public static var endpointAlreadyExistsException: Self { .init(.endpointAlreadyExistsException) }
    /// The endpoint group that you specified already exists.
    public static var endpointGroupAlreadyExistsException: Self { .init(.endpointGroupAlreadyExistsException) }
    /// The endpoint group that you specified doesn't exist.
    public static var endpointGroupNotFoundException: Self { .init(.endpointGroupNotFoundException) }
    /// The endpoint that you specified doesn't exist.
    public static var endpointNotFoundException: Self { .init(.endpointNotFoundException) }
    /// The CIDR that you specified is not valid for this action. For example, the state of the CIDR might be
    /// 		incorrect for this action.
    public static var incorrectCidrStateException: Self { .init(.incorrectCidrStateException) }
    /// There was an internal error for AWS Global Accelerator.
    public static var internalServiceErrorException: Self { .init(.internalServiceErrorException) }
    /// An argument that you specified is invalid.
    public static var invalidArgumentException: Self { .init(.invalidArgumentException) }
    /// There isn't another item to return.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// The port numbers that you specified are not valid numbers or are not unique for this accelerator.
    public static var invalidPortRangeException: Self { .init(.invalidPortRangeException) }
    /// Processing your request would cause you to exceed an AWS Global Accelerator limit.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The listener that you specified doesn't exist.
    public static var listenerNotFoundException: Self { .init(.listenerNotFoundException) }
}

extension GlobalAcceleratorErrorType: Equatable {
    public static func == (lhs: GlobalAcceleratorErrorType, rhs: GlobalAcceleratorErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension GlobalAcceleratorErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
