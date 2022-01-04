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

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension GlobalAccelerator {
    // MARK: Async API Calls

    /// Associate a virtual private cloud (VPC) subnet endpoint with your custom routing accelerator.
    /// 	        The listener port range must be large enough to support the number of IP addresses that can be
    /// 		specified in your subnet. The number of ports required is: subnet size times the number
    /// 		of ports per destination EC2 instances. For example, a subnet defined as /24 requires a listener
    /// 		port range of at least 255 ports.
    /// 	        Note: You must have enough remaining listener ports available to
    /// 		map to the subnet ports, or the call will fail with a LimitExceededException.
    /// 	        By default, all destinations in a subnet in a custom routing accelerator cannot receive traffic. To enable all
    /// 			destinations to receive traffic, or to specify individual port mappings that can receive
    /// 			traffic, see the
    /// 				AllowCustomRoutingTraffic operation.
    public func addCustomRoutingEndpoints(_ input: AddCustomRoutingEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCustomRoutingEndpointsResponse {
        return try await self.client.execute(operation: "AddCustomRoutingEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Advertises an IPv4 address range that is provisioned for use with your AWS resources
    /// 			through bring your own IP addresses (BYOIP). It can take a few minutes before traffic to
    /// 			the specified addresses starts routing to AWS because of propagation delays.
    /// 		       To stop advertising the BYOIP address range, use
    /// 			WithdrawByoipCidr.
    /// 		       For more information, see Bring Your Own
    /// 			IP Addresses (BYOIP) in the AWS Global Accelerator Developer Guide.
    public func advertiseByoipCidr(_ input: AdvertiseByoipCidrRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AdvertiseByoipCidrResponse {
        return try await self.client.execute(operation: "AdvertiseByoipCidr", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that can receive traffic
    /// 			for a custom routing accelerator. You can allow traffic to all destinations in the subnet endpoint, or allow traffic to a
    /// 			specified list of destination IP addresses and ports in the subnet. Note that you cannot specify IP addresses or ports
    /// 			outside of the range that you configured for the endpoint group.
    /// 		       After you make changes, you can verify that the updates are complete by checking the status of your
    /// 			accelerator: the status changes from IN_PROGRESS to DEPLOYED.
    public func allowCustomRoutingTraffic(_ input: AllowCustomRoutingTrafficRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AllowCustomRoutingTraffic", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create an accelerator. An accelerator includes one or more listeners that process inbound connections and direct traffic
    /// 			to one or more endpoint groups, each of which includes endpoints, such as Network Load Balancers.
    ///
    /// 			         Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the
    /// 				US West (Oregon) Region to create or update accelerators.
    ///
    public func createAccelerator(_ input: CreateAcceleratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAcceleratorResponse {
        return try await self.client.execute(operation: "CreateAccelerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a custom routing accelerator. A custom routing accelerator directs traffic to one of possibly thousands
    /// 		of Amazon EC2 instance destinations running in a single or multiple virtual private clouds (VPC) subnet endpoints.
    /// 	        Be aware that, by default, all destination EC2 instances in a VPC subnet endpoint cannot receive
    /// 			traffic. To enable all destinations to receive traffic, or to specify individual port
    /// 			mappings that can receive traffic, see the
    /// 				AllowCustomRoutingTraffic operation.
    ///
    /// 		          Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the
    /// 			US West (Oregon) Region to create or update accelerators.
    ///
    public func createCustomRoutingAccelerator(_ input: CreateCustomRoutingAcceleratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomRoutingAcceleratorResponse {
        return try await self.client.execute(operation: "CreateCustomRoutingAccelerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create an endpoint group for the specified listener for a custom routing accelerator.
    /// 		An endpoint group is a collection of endpoints in one AWS
    /// 		Region.
    public func createCustomRoutingEndpointGroup(_ input: CreateCustomRoutingEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomRoutingEndpointGroupResponse {
        return try await self.client.execute(operation: "CreateCustomRoutingEndpointGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a listener to process inbound connections from clients to a custom routing accelerator.
    /// 			Connections arrive to assigned static IP addresses on the port range that you specify.
    public func createCustomRoutingListener(_ input: CreateCustomRoutingListenerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomRoutingListenerResponse {
        return try await self.client.execute(operation: "CreateCustomRoutingListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create an endpoint group for the specified listener. An endpoint group is a collection of endpoints in one AWS
    /// 			Region. A resource must be valid and active when you add it as an endpoint.
    public func createEndpointGroup(_ input: CreateEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEndpointGroupResponse {
        return try await self.client.execute(operation: "CreateEndpointGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a listener to process inbound connections from clients to an accelerator. Connections arrive to assigned static
    /// 			IP addresses on a port, port range, or list of port ranges that you specify.
    public func createListener(_ input: CreateListenerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateListenerResponse {
        return try await self.client.execute(operation: "CreateListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources
    /// 			(listeners and endpoint groups). To disable the accelerator, update the accelerator to set Enabled to false.
    /// 		        When you create an accelerator, by default, Global Accelerator provides you with a set of two static IP addresses.
    /// 			Alternatively, you can bring your own IP address ranges to Global Accelerator and assign IP addresses from those ranges.
    ///
    /// 		          The IP addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and
    /// 			it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the
    /// 			static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them.
    /// 			As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You
    /// 			can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information,
    /// 			see Authentication and Access Control in
    /// 			the AWS Global Accelerator Developer Guide.
    public func deleteAccelerator(_ input: DeleteAcceleratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteAccelerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a custom routing accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources
    /// 		(listeners and endpoint groups). To disable the accelerator, update the accelerator to set Enabled to false.
    /// 	         When you create a custom routing accelerator, by default, Global Accelerator provides you with a set of two static IP addresses.
    ///
    /// 		          The IP
    /// 			addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and
    /// 			it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the
    /// 			static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them.
    /// 			As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You
    /// 			can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information,
    /// 			see Authentication and Access Control in
    /// 			the AWS Global Accelerator Developer Guide.
    public func deleteCustomRoutingAccelerator(_ input: DeleteCustomRoutingAcceleratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteCustomRoutingAccelerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an endpoint group from a listener for a custom routing accelerator.
    public func deleteCustomRoutingEndpointGroup(_ input: DeleteCustomRoutingEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteCustomRoutingEndpointGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a listener for a custom routing accelerator.
    public func deleteCustomRoutingListener(_ input: DeleteCustomRoutingListenerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteCustomRoutingListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an endpoint group from a listener.
    public func deleteEndpointGroup(_ input: DeleteEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteEndpointGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a listener from an accelerator.
    public func deleteListener(_ input: DeleteListenerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that cannot receive traffic
    /// 			for a custom routing accelerator. You can deny traffic to all destinations in the VPC endpoint, or deny traffic to a
    /// 			specified list of destination IP addresses and ports. Note that you cannot specify IP addresses
    /// 			or ports outside of the range that you configured for the endpoint group.
    /// 		       After you make changes, you can verify that the updates are complete by checking the status of your
    /// 			accelerator: the status changes from IN_PROGRESS to DEPLOYED.
    public func denyCustomRoutingTraffic(_ input: DenyCustomRoutingTrafficRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DenyCustomRoutingTraffic", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Releases the specified address range that you provisioned to use with your AWS resources
    /// 			through bring your own IP addresses (BYOIP) and deletes the corresponding address pool.
    /// 		       Before you can release an address range, you must stop advertising it by using WithdrawByoipCidr and you must not have
    /// 			any accelerators that are using static IP addresses allocated from its address range.
    ///
    /// 		       For more information, see Bring Your Own
    /// 			IP Addresses (BYOIP) in the AWS Global Accelerator Developer Guide.
    public func deprovisionByoipCidr(_ input: DeprovisionByoipCidrRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeprovisionByoipCidrResponse {
        return try await self.client.execute(operation: "DeprovisionByoipCidr", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe an accelerator.
    public func describeAccelerator(_ input: DescribeAcceleratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAcceleratorResponse {
        return try await self.client.execute(operation: "DescribeAccelerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe the attributes of an accelerator.
    ///
    public func describeAcceleratorAttributes(_ input: DescribeAcceleratorAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAcceleratorAttributesResponse {
        return try await self.client.execute(operation: "DescribeAcceleratorAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe a custom routing accelerator.
    public func describeCustomRoutingAccelerator(_ input: DescribeCustomRoutingAcceleratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomRoutingAcceleratorResponse {
        return try await self.client.execute(operation: "DescribeCustomRoutingAccelerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe the attributes of a custom routing accelerator.
    public func describeCustomRoutingAcceleratorAttributes(_ input: DescribeCustomRoutingAcceleratorAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomRoutingAcceleratorAttributesResponse {
        return try await self.client.execute(operation: "DescribeCustomRoutingAcceleratorAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe an endpoint group for a custom routing accelerator.
    public func describeCustomRoutingEndpointGroup(_ input: DescribeCustomRoutingEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomRoutingEndpointGroupResponse {
        return try await self.client.execute(operation: "DescribeCustomRoutingEndpointGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The description of a listener for a custom routing accelerator.
    public func describeCustomRoutingListener(_ input: DescribeCustomRoutingListenerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomRoutingListenerResponse {
        return try await self.client.execute(operation: "DescribeCustomRoutingListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe an endpoint group.
    public func describeEndpointGroup(_ input: DescribeEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEndpointGroupResponse {
        return try await self.client.execute(operation: "DescribeEndpointGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe a listener.
    public func describeListener(_ input: DescribeListenerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenerResponse {
        return try await self.client.execute(operation: "DescribeListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the accelerators for an AWS account.
    public func listAccelerators(_ input: ListAcceleratorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAcceleratorsResponse {
        return try await self.client.execute(operation: "ListAccelerators", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the IP address ranges that were specified in calls to ProvisionByoipCidr, including
    /// 			the current state and a history of state changes.
    public func listByoipCidrs(_ input: ListByoipCidrsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListByoipCidrsResponse {
        return try await self.client.execute(operation: "ListByoipCidrs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the custom routing accelerators for an AWS account.
    public func listCustomRoutingAccelerators(_ input: ListCustomRoutingAcceleratorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCustomRoutingAcceleratorsResponse {
        return try await self.client.execute(operation: "ListCustomRoutingAccelerators", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the endpoint groups that are associated with a listener for a custom routing accelerator.
    public func listCustomRoutingEndpointGroups(_ input: ListCustomRoutingEndpointGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCustomRoutingEndpointGroupsResponse {
        return try await self.client.execute(operation: "ListCustomRoutingEndpointGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the listeners for a custom routing accelerator.
    public func listCustomRoutingListeners(_ input: ListCustomRoutingListenersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCustomRoutingListenersResponse {
        return try await self.client.execute(operation: "ListCustomRoutingListeners", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a complete mapping from the public accelerator IP address and port to destination EC2 instance
    /// 		IP addresses and ports in the virtual public cloud (VPC) subnet endpoint for a custom routing accelerator.
    /// 		For each subnet endpoint that you add, Global Accelerator creates a new static port mapping for the accelerator. The port
    /// 		mappings don't change after Global Accelerator generates them, so you can retrieve and cache the full mapping on your servers.
    /// 	        If you remove a subnet from your accelerator, Global Accelerator removes (reclaims) the port mappings. If you add a subnet to
    /// 		your accelerator, Global Accelerator creates new port mappings (the existing ones don't change). If you add or remove EC2 instances
    /// 		in your subnet, the port mappings don't change, because the mappings are created when you add the subnet to Global Accelerator.
    /// 	        The mappings also include a flag for each destination denoting which destination IP addresses and
    /// 		ports are allowed or denied traffic.
    public func listCustomRoutingPortMappings(_ input: ListCustomRoutingPortMappingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCustomRoutingPortMappingsResponse {
        return try await self.client.execute(operation: "ListCustomRoutingPortMappings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the port mappings for a specific EC2 instance (destination) in a VPC subnet endpoint. The
    /// 			response is the mappings for one destination IP address. This is useful when your subnet endpoint has mappings that
    /// 			span multiple custom routing accelerators in your account, or for scenarios where you only want to
    /// 			list the port mappings for a specific destination instance.
    public func listCustomRoutingPortMappingsByDestination(_ input: ListCustomRoutingPortMappingsByDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCustomRoutingPortMappingsByDestinationResponse {
        return try await self.client.execute(operation: "ListCustomRoutingPortMappingsByDestination", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the endpoint groups that are associated with a listener.
    public func listEndpointGroups(_ input: ListEndpointGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEndpointGroupsResponse {
        return try await self.client.execute(operation: "ListEndpointGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the listeners for an accelerator.
    public func listListeners(_ input: ListListenersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListListenersResponse {
        return try await self.client.execute(operation: "ListListeners", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all tags for an accelerator.
    /// 		       For more information, see Tagging
    /// 			in AWS Global Accelerator in the AWS Global Accelerator Developer Guide.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provisions an IP address range to use with your AWS resources through bring your own IP
    /// 			addresses (BYOIP) and creates a corresponding address pool. After the address range is provisioned,
    /// 			it is ready to be advertised using
    /// 			AdvertiseByoipCidr.
    /// 		       For more information, see Bring Your Own
    /// 			IP Addresses (BYOIP) in the AWS Global Accelerator Developer Guide.
    public func provisionByoipCidr(_ input: ProvisionByoipCidrRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProvisionByoipCidrResponse {
        return try await self.client.execute(operation: "ProvisionByoipCidr", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove endpoints from a custom routing accelerator.
    public func removeCustomRoutingEndpoints(_ input: RemoveCustomRoutingEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RemoveCustomRoutingEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add tags to an accelerator resource.
    /// 		       For more information, see Tagging
    /// 			in AWS Global Accelerator in the AWS Global Accelerator Developer Guide.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove tags from a Global Accelerator resource. When you specify a tag key, the action removes both that key and its associated value.
    /// 			The operation succeeds even if you attempt to remove tags from an accelerator that was already removed.
    /// 		       For more information, see Tagging
    /// 			in AWS Global Accelerator in the AWS Global Accelerator Developer Guide.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an accelerator.
    ///
    ///
    /// 			         Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the
    /// 				US West (Oregon) Region to create or update accelerators.
    ///
    public func updateAccelerator(_ input: UpdateAcceleratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAcceleratorResponse {
        return try await self.client.execute(operation: "UpdateAccelerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the attributes for an accelerator.
    public func updateAcceleratorAttributes(_ input: UpdateAcceleratorAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAcceleratorAttributesResponse {
        return try await self.client.execute(operation: "UpdateAcceleratorAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a custom routing accelerator.
    public func updateCustomRoutingAccelerator(_ input: UpdateCustomRoutingAcceleratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCustomRoutingAcceleratorResponse {
        return try await self.client.execute(operation: "UpdateCustomRoutingAccelerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the attributes for a custom routing accelerator.
    public func updateCustomRoutingAcceleratorAttributes(_ input: UpdateCustomRoutingAcceleratorAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCustomRoutingAcceleratorAttributesResponse {
        return try await self.client.execute(operation: "UpdateCustomRoutingAcceleratorAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a listener for a custom routing accelerator.
    public func updateCustomRoutingListener(_ input: UpdateCustomRoutingListenerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCustomRoutingListenerResponse {
        return try await self.client.execute(operation: "UpdateCustomRoutingListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an endpoint group. A resource must be valid and active when you add it as an endpoint.
    public func updateEndpointGroup(_ input: UpdateEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEndpointGroupResponse {
        return try await self.client.execute(operation: "UpdateEndpointGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a listener.
    public func updateListener(_ input: UpdateListenerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateListenerResponse {
        return try await self.client.execute(operation: "UpdateListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops advertising an address range that is provisioned as an address pool.
    /// 			You can perform this operation at most once every 10 seconds, even if you specify different address
    /// 			ranges each time.
    /// 		       It can take a few minutes before traffic to the specified addresses stops routing to AWS because of
    /// 			propagation delays.
    /// 		       For more information, see Bring Your Own
    /// 			IP Addresses (BYOIP) in the AWS Global Accelerator Developer Guide.
    public func withdrawByoipCidr(_ input: WithdrawByoipCidrRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> WithdrawByoipCidrResponse {
        return try await self.client.execute(operation: "WithdrawByoipCidr", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
