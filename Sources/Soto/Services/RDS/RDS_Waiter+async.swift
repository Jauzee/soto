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
extension RDS {
    public func waitUntilDBClusterSnapshotAvailable(
        _ input: DescribeDBClusterSnapshotsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("dBClusterSnapshots[].status", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBClusterSnapshots[].status", expected: "deleted")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBClusterSnapshots[].status", expected: "deleting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBClusterSnapshots[].status", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBClusterSnapshots[].status", expected: "incompatible-restore")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBClusterSnapshots[].status", expected: "incompatible-parameters")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBClusterSnapshots
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDBClusterSnapshotDeleted(
        _ input: DescribeDBClusterSnapshotsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("length(dBClusterSnapshots) == `0`", expected: true)),
                .init(state: .success, matcher: AWSErrorCodeMatcher("DBClusterSnapshotNotFoundFault")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBClusterSnapshots[].status", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBClusterSnapshots[].status", expected: "modifying")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBClusterSnapshots[].status", expected: "rebooting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBClusterSnapshots[].status", expected: "resetting-master-credentials")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBClusterSnapshots
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDBInstanceAvailable(
        _ input: DescribeDBInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("dBInstances[].dBInstanceStatus", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "deleted")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "deleting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "incompatible-restore")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "incompatible-parameters")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDBInstanceDeleted(
        _ input: DescribeDBInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("length(dBInstances) == `0`", expected: true)),
                .init(state: .success, matcher: AWSErrorCodeMatcher("DBInstanceNotFound")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "modifying")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "rebooting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBInstances[].dBInstanceStatus", expected: "resetting-master-credentials")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDBSnapshotAvailable(
        _ input: DescribeDBSnapshotsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("dBSnapshots[].status", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBSnapshots[].status", expected: "deleted")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBSnapshots[].status", expected: "deleting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBSnapshots[].status", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBSnapshots[].status", expected: "incompatible-restore")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBSnapshots[].status", expected: "incompatible-parameters")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBSnapshots
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDBSnapshotDeleted(
        _ input: DescribeDBSnapshotsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("length(dBSnapshots) == `0`", expected: true)),
                .init(state: .success, matcher: AWSErrorCodeMatcher("DBSnapshotNotFound")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBSnapshots[].status", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBSnapshots[].status", expected: "modifying")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBSnapshots[].status", expected: "rebooting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("dBSnapshots[].status", expected: "resetting-master-credentials")),
            ],
            minDelayTime: .seconds(30),
            command: describeDBSnapshots
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)