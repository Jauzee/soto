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

@_exported import SotoCore

/// Service object for interacting with AWS EBS service.
///
/// You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to create Amazon EBS snapshots, write data directly to  		your snapshots, read data on your snapshots, and identify the differences or changes between  		two snapshots. If you’re an independent software vendor (ISV) who offers backup services for  		Amazon EBS, the EBS direct APIs make it more efficient and cost-effective to track incremental changes on  		your Amazon EBS volumes through snapshots. This can be done without having to create new volumes  		from snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2) instances to compare the differences. 		 	    You can create incremental snapshots directly from data on-premises into volumes and the  		cloud to use for quick disaster recovery. With the ability to write and read snapshots, you can  		write your on-premises data to an snapshot during a disaster. Then after recovery, you can  		restore it back to Amazon Web Services or on-premises from the snapshot. You no longer need to build and  		maintain complex mechanisms to copy data to and from Amazon EBS.
///  This API reference provides detailed information about the actions, data types, parameters, and errors of the EBS direct APIs. For more information about the elements that make up the EBS direct APIs, and examples of how to use them effectively, see Accessing the Contents of an Amazon EBS Snapshot in the Amazon Elastic Compute Cloud User Guide. For more information about the supported Amazon Web Services Regions, endpoints, and service quotas for the EBS direct APIs, see Amazon Elastic Block Store Endpoints and Quotas in the Amazon Web Services General Reference.
public struct EBS: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the EBS client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "ebs",
            serviceProtocol: .restjson,
            apiVersion: "2019-11-02",
            endpoint: endpoint,
            errorType: EBSErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Seals and completes the snapshot after all of the required blocks of data have been written to it. Completing the snapshot changes the status to completed. You cannot write new blocks to a snapshot after it has been completed.
    public func completeSnapshot(_ input: CompleteSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteSnapshotResponse> {
        return self.client.execute(operation: "CompleteSnapshot", path: "/snapshots/completion/{SnapshotId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the data in a block in an Amazon Elastic Block Store snapshot.
    public func getSnapshotBlock(_ input: GetSnapshotBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSnapshotBlockResponse> {
        return self.client.execute(operation: "GetSnapshotBlock", path: "/snapshots/{SnapshotId}/blocks/{BlockIndex}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
    public func listChangedBlocks(_ input: ListChangedBlocksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChangedBlocksResponse> {
        return self.client.execute(operation: "ListChangedBlocks", path: "/snapshots/{SecondSnapshotId}/changedblocks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the blocks in an Amazon Elastic Block Store snapshot.
    public func listSnapshotBlocks(_ input: ListSnapshotBlocksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSnapshotBlocksResponse> {
        return self.client.execute(operation: "ListSnapshotBlocks", path: "/snapshots/{SnapshotId}/blocks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Writes a block of data to a snapshot. If the specified block contains data, the existing data is overwritten. The target snapshot must be in the pending state.  	 	    Data written to a snapshot must be aligned with 512-KiB sectors.
    public func putSnapshotBlock(_ input: PutSnapshotBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutSnapshotBlockResponse> {
        return self.client.execute(operation: "PutSnapshotBlock", path: "/snapshots/{SnapshotId}/blocks/{BlockIndex}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Amazon EBS snapshot. The new snapshot enters the pending state after the request completes.  After creating the snapshot, use  PutSnapshotBlock to write blocks of data to the snapshot.
    public func startSnapshot(_ input: StartSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSnapshotResponse> {
        return self.client.execute(operation: "StartSnapshot", path: "/snapshots", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming API Calls

    /// Returns the data in a block in an Amazon Elastic Block Store snapshot.
    public func getSnapshotBlockStreaming(_ input: GetSnapshotBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) -> EventLoopFuture<GetSnapshotBlockResponse> {
        return self.client.execute(operation: "GetSnapshotBlock", path: "/snapshots/{SnapshotId}/blocks/{BlockIndex}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }
}

extension EBS {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: EBS, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
