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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Kafka {
    ///  Returns a list of all the operations that have been performed on the specified MSK cluster.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listClusterOperationsPaginator(
        _ input: ListClusterOperationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListClusterOperationsRequest, ListClusterOperationsResponse> {
        return .init(
            input: input,
            command: listClusterOperations,
            inputKey: \ListClusterOperationsRequest.nextToken,
            outputKey: \ListClusterOperationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all the MSK clusters in the current Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listClustersPaginator(
        _ input: ListClustersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListClustersRequest, ListClustersResponse> {
        return .init(
            input: input,
            command: listClusters,
            inputKey: \ListClustersRequest.nextToken,
            outputKey: \ListClustersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all the revisions of an MSK configuration.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConfigurationRevisionsPaginator(
        _ input: ListConfigurationRevisionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConfigurationRevisionsRequest, ListConfigurationRevisionsResponse> {
        return .init(
            input: input,
            command: listConfigurationRevisions,
            inputKey: \ListConfigurationRevisionsRequest.nextToken,
            outputKey: \ListConfigurationRevisionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all the MSK configurations in this Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConfigurationsPaginator(
        _ input: ListConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConfigurationsRequest, ListConfigurationsResponse> {
        return .init(
            input: input,
            command: listConfigurations,
            inputKey: \ListConfigurationsRequest.nextToken,
            outputKey: \ListConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of Apache Kafka versions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listKafkaVersionsPaginator(
        _ input: ListKafkaVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListKafkaVersionsRequest, ListKafkaVersionsResponse> {
        return .init(
            input: input,
            command: listKafkaVersions,
            inputKey: \ListKafkaVersionsRequest.nextToken,
            outputKey: \ListKafkaVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the broker nodes in the cluster.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNodesPaginator(
        _ input: ListNodesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNodesRequest, ListNodesResponse> {
        return .init(
            input: input,
            command: listNodes,
            inputKey: \ListNodesRequest.nextToken,
            outputKey: \ListNodesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the Scram Secrets associated with an Amazon MSK cluster.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listScramSecretsPaginator(
        _ input: ListScramSecretsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListScramSecretsRequest, ListScramSecretsResponse> {
        return .init(
            input: input,
            command: listScramSecrets,
            inputKey: \ListScramSecretsRequest.nextToken,
            outputKey: \ListScramSecretsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
