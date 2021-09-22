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

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Kafka {
    // MARK: Async API Calls

    /// Associates one or more Scram Secrets with an Amazon MSK cluster.
    public func batchAssociateScramSecret(_ input: BatchAssociateScramSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAssociateScramSecretResponse {
        return try await self.client.execute(operation: "BatchAssociateScramSecret", path: "/v1/clusters/{clusterArn}/scram-secrets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates one or more Scram Secrets from an Amazon MSK cluster.
    public func batchDisassociateScramSecret(_ input: BatchDisassociateScramSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDisassociateScramSecretResponse {
        return try await self.client.execute(operation: "BatchDisassociateScramSecret", path: "/v1/clusters/{clusterArn}/scram-secrets", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new MSK cluster.
    public func createCluster(_ input: CreateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        return try await self.client.execute(operation: "CreateCluster", path: "/v1/clusters", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new MSK configuration.
    public func createConfiguration(_ input: CreateConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigurationResponse {
        return try await self.client.execute(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
    public func deleteCluster(_ input: DeleteClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterResponse {
        return try await self.client.execute(operation: "DeleteCluster", path: "/v1/clusters/{clusterArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified MSK configuration. The configuration must be in the ACTIVE or DELETE_FAILED state.
    public func deleteConfiguration(_ input: DeleteConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConfigurationResponse {
        return try await self.client.execute(operation: "DeleteConfiguration", path: "/v1/configurations/{arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
    public func describeCluster(_ input: DescribeClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterResponse {
        return try await self.client.execute(operation: "DescribeCluster", path: "/v1/clusters/{clusterArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of the cluster operation specified by the ARN.
    public func describeClusterOperation(_ input: DescribeClusterOperationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterOperationResponse {
        return try await self.client.execute(operation: "DescribeClusterOperation", path: "/v1/operations/{clusterOperationArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of this MSK configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigurationResponse {
        return try await self.client.execute(operation: "DescribeConfiguration", path: "/v1/configurations/{arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of this revision of the configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigurationRevisionResponse {
        return try await self.client.execute(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{arn}/revisions/{revision}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A list of brokers that a client application can use to bootstrap.
    public func getBootstrapBrokers(_ input: GetBootstrapBrokersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBootstrapBrokersResponse {
        return try await self.client.execute(operation: "GetBootstrapBrokers", path: "/v1/clusters/{clusterArn}/bootstrap-brokers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the Apache Kafka versions to which you can update the MSK cluster.
    public func getCompatibleKafkaVersions(_ input: GetCompatibleKafkaVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCompatibleKafkaVersionsResponse {
        return try await self.client.execute(operation: "GetCompatibleKafkaVersions", path: "/v1/compatible-kafka-versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the operations that have been performed on the specified MSK cluster.
    public func listClusterOperations(_ input: ListClusterOperationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClusterOperationsResponse {
        return try await self.client.execute(operation: "ListClusterOperations", path: "/v1/clusters/{clusterArn}/operations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the MSK clusters in the current Region.
    public func listClusters(_ input: ListClustersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClustersResponse {
        return try await self.client.execute(operation: "ListClusters", path: "/v1/clusters", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the revisions of an MSK configuration.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConfigurationRevisionsResponse {
        return try await self.client.execute(operation: "ListConfigurationRevisions", path: "/v1/configurations/{arn}/revisions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the MSK configurations in this Region.
    public func listConfigurations(_ input: ListConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConfigurationsResponse {
        return try await self.client.execute(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of Kafka versions.
    public func listKafkaVersions(_ input: ListKafkaVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListKafkaVersionsResponse {
        return try await self.client.execute(operation: "ListKafkaVersions", path: "/v1/kafka-versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the broker nodes in the cluster.
    public func listNodes(_ input: ListNodesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNodesResponse {
        return try await self.client.execute(operation: "ListNodes", path: "/v1/clusters/{clusterArn}/nodes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the Scram Secrets associated with an Amazon MSK cluster.
    public func listScramSecrets(_ input: ListScramSecretsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListScramSecretsResponse {
        return try await self.client.execute(operation: "ListScramSecrets", path: "/v1/clusters/{clusterArn}/scram-secrets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the tags associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Executes a reboot on a broker.
    public func rebootBroker(_ input: RebootBrokerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebootBrokerResponse {
        return try await self.client.execute(operation: "RebootBroker", path: "/v1/clusters/{clusterArn}/reboot-broker", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to the specified MSK resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the tags associated with the keys that are provided in the query.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the number of broker nodes in the cluster. You can use this operation to increase the number of brokers in an existing cluster. You can't decrease the number of brokers.
    public func updateBrokerCount(_ input: UpdateBrokerCountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBrokerCountResponse {
        return try await self.client.execute(operation: "UpdateBrokerCount", path: "/v1/clusters/{clusterArn}/nodes/count", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the EBS storage associated with MSK brokers.
    public func updateBrokerStorage(_ input: UpdateBrokerStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBrokerStorageResponse {
        return try await self.client.execute(operation: "UpdateBrokerStorage", path: "/v1/clusters/{clusterArn}/nodes/storage", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates all the brokers in the cluster to the specified type.
    public func updateBrokerType(_ input: UpdateBrokerTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBrokerTypeResponse {
        return try await self.client.execute(operation: "UpdateBrokerType", path: "/v1/clusters/{clusterArn}/nodes/type", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the cluster with the configuration that is specified in the request body.
    public func updateClusterConfiguration(_ input: UpdateClusterConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClusterConfigurationResponse {
        return try await self.client.execute(operation: "UpdateClusterConfiguration", path: "/v1/clusters/{clusterArn}/configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the Apache Kafka version for the cluster.
    public func updateClusterKafkaVersion(_ input: UpdateClusterKafkaVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClusterKafkaVersionResponse {
        return try await self.client.execute(operation: "UpdateClusterKafkaVersion", path: "/v1/clusters/{clusterArn}/version", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing MSK configuration. The configuration must be in the Active state.
    public func updateConfiguration(_ input: UpdateConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateConfigurationResponse {
        return try await self.client.execute(operation: "UpdateConfiguration", path: "/v1/configurations/{arn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
    public func updateMonitoring(_ input: UpdateMonitoringRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMonitoringResponse {
        return try await self.client.execute(operation: "UpdateMonitoring", path: "/v1/clusters/{clusterArn}/monitoring", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// You can use this operation to update the encrypting and authentication settings for an existing cluster.
    public func updateSecurity(_ input: UpdateSecurityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSecurityResponse {
        return try await self.client.execute(operation: "UpdateSecurity", path: "/v1/clusters/{clusterArn}/security", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)