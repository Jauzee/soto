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
extension ServiceDiscovery {
    ///  Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service.  There's a brief delay between when you register an instance and when the health status for the instance is available.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getInstancesHealthStatusPaginator(
        _ input: GetInstancesHealthStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetInstancesHealthStatusRequest, GetInstancesHealthStatusResponse> {
        return .init(
            input: input,
            command: getInstancesHealthStatus,
            inputKey: \GetInstancesHealthStatusRequest.nextToken,
            outputKey: \GetInstancesHealthStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists summary information about the instances that you registered by using a specified service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstancesPaginator(
        _ input: ListInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstancesRequest, ListInstancesResponse> {
        return .init(
            input: input,
            command: listInstances,
            inputKey: \ListInstancesRequest.nextToken,
            outputKey: \ListInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists summary information about the namespaces that were created by the current account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNamespacesPaginator(
        _ input: ListNamespacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNamespacesRequest, ListNamespacesResponse> {
        return .init(
            input: input,
            command: listNamespaces,
            inputKey: \ListNamespacesRequest.nextToken,
            outputKey: \ListNamespacesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists operations that match the criteria that you specify.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOperationsPaginator(
        _ input: ListOperationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOperationsRequest, ListOperationsResponse> {
        return .init(
            input: input,
            command: listOperations,
            inputKey: \ListOperationsRequest.nextToken,
            outputKey: \ListOperationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists summary information for all the services that are associated with one or more specified namespaces.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServicesRequest, ListServicesResponse> {
        return .init(
            input: input,
            command: listServices,
            inputKey: \ListServicesRequest.nextToken,
            outputKey: \ListServicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
