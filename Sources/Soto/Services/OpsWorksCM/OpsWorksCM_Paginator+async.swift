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
extension OpsWorksCM {
    ///   Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups.   This operation is synchronous.   A ResourceNotFoundException is thrown when the backup does not exist. A ValidationException is raised when parameters of the request are not valid.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeBackupsPaginator(
        _ input: DescribeBackupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeBackupsRequest, DescribeBackupsResponse> {
        return .init(
            input: input,
            command: describeBackups,
            inputKey: \DescribeBackupsRequest.nextToken,
            outputKey: \DescribeBackupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Describes events for a specified server. Results are ordered by time, with newest events first.   This operation is synchronous.   A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeEventsPaginator(
        _ input: DescribeEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeEventsRequest, DescribeEventsResponse> {
        return .init(
            input: input,
            command: describeEvents,
            inputKey: \DescribeEventsRequest.nextToken,
            outputKey: \DescribeEventsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks CM does not query other services.   This operation is synchronous.   A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeServersPaginator(
        _ input: DescribeServersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeServersRequest, DescribeServersResponse> {
        return .init(
            input: input,
            command: describeServers,
            inputKey: \DescribeServersRequest.nextToken,
            outputKey: \DescribeServersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of tags that are applied to the specified AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise servers or backups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceRequest, ListTagsForResourceResponse> {
        return .init(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
