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

#if compiler(>=5.5)

import SotoCore

// MARK: Waiters

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Redshift {
    public func waitUntilClusterAvailable(
        _ input: DescribeClustersMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("clusters[].clusterStatus", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("clusters[].clusterStatus", expected: "deleting")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("ClusterNotFound")),
            ],
            minDelayTime: .seconds(60),
            command: describeClusters
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilClusterDeleted(
        _ input: DescribeClustersMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ClusterNotFound")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("clusters[].clusterStatus", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("clusters[].clusterStatus", expected: "modifying")),
            ],
            minDelayTime: .seconds(60),
            command: describeClusters
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilClusterRestored(
        _ input: DescribeClustersMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("clusters[].restoreStatus.status", expected: "completed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("clusters[].clusterStatus", expected: "deleting")),
            ],
            minDelayTime: .seconds(60),
            command: describeClusters
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSnapshotAvailable(
        _ input: DescribeClusterSnapshotsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("snapshots[].status", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("snapshots[].status", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("snapshots[].status", expected: "deleted")),
            ],
            minDelayTime: .seconds(15),
            command: describeClusterSnapshots
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)