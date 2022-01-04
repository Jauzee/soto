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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension RAM {
    ///  Retrieves the resource policies for the specified resources that you own and have shared.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourcePoliciesPaginator(
        _ input: GetResourcePoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourcePoliciesRequest, GetResourcePoliciesResponse> {
        return .init(
            input: input,
            command: getResourcePolicies,
            inputKey: \GetResourcePoliciesRequest.nextToken,
            outputKey: \GetResourcePoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the resource and principal associations for resource shares that you own.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourceShareAssociationsPaginator(
        _ input: GetResourceShareAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourceShareAssociationsRequest, GetResourceShareAssociationsResponse> {
        return .init(
            input: input,
            command: getResourceShareAssociations,
            inputKey: \GetResourceShareAssociationsRequest.nextToken,
            outputKey: \GetResourceShareAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves details about invitations that you have received for resource shares.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourceShareInvitationsPaginator(
        _ input: GetResourceShareInvitationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourceShareInvitationsRequest, GetResourceShareInvitationsResponse> {
        return .init(
            input: input,
            command: getResourceShareInvitations,
            inputKey: \GetResourceShareInvitationsRequest.nextToken,
            outputKey: \GetResourceShareInvitationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves details about the resource shares that you own or that are shared with you.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourceSharesPaginator(
        _ input: GetResourceSharesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourceSharesRequest, GetResourceSharesResponse> {
        return .init(
            input: input,
            command: getResourceShares,
            inputKey: \GetResourceSharesRequest.nextToken,
            outputKey: \GetResourceSharesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the resources in a resource share that is shared with you but for which the invitation is still PENDING. That means that you haven't accepted or rejected the invitation and the invitation hasn't expired.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPendingInvitationResourcesPaginator(
        _ input: ListPendingInvitationResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPendingInvitationResourcesRequest, ListPendingInvitationResourcesResponse> {
        return .init(
            input: input,
            command: listPendingInvitationResources,
            inputKey: \ListPendingInvitationResourcesRequest.nextToken,
            outputKey: \ListPendingInvitationResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of available RAM permissions that you can use for the supported resource types.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionsPaginator(
        _ input: ListPermissionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionsRequest, ListPermissionsResponse> {
        return .init(
            input: input,
            command: listPermissions,
            inputKey: \ListPermissionsRequest.nextToken,
            outputKey: \ListPermissionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the principals that you are sharing resources with or that are sharing resources with you.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPrincipalsPaginator(
        _ input: ListPrincipalsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPrincipalsRequest, ListPrincipalsResponse> {
        return .init(
            input: input,
            command: listPrincipals,
            inputKey: \ListPrincipalsRequest.nextToken,
            outputKey: \ListPrincipalsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the RAM permissions that are associated with a resource share.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResourceSharePermissionsPaginator(
        _ input: ListResourceSharePermissionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResourceSharePermissionsRequest, ListResourceSharePermissionsResponse> {
        return .init(
            input: input,
            command: listResourceSharePermissions,
            inputKey: \ListResourceSharePermissionsRequest.nextToken,
            outputKey: \ListResourceSharePermissionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the resource types that can be shared by RAM.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResourceTypesPaginator(
        _ input: ListResourceTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResourceTypesRequest, ListResourceTypesResponse> {
        return .init(
            input: input,
            command: listResourceTypes,
            inputKey: \ListResourceTypesRequest.nextToken,
            outputKey: \ListResourceTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the resources that you added to a resource shares or the resources that are shared with you.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResourcesPaginator(
        _ input: ListResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResourcesRequest, ListResourcesResponse> {
        return .init(
            input: input,
            command: listResources,
            inputKey: \ListResourcesRequest.nextToken,
            outputKey: \ListResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
