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
extension ServiceQuotas {
    // MARK: Async API Calls

    /// Associates your quota request template with your organization. When a new account is created in your organization, the quota increase requests in the template are automatically applied to the account. You can add a quota increase request for any adjustable quota to your template.
    public func associateServiceQuotaTemplate(_ input: AssociateServiceQuotaTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateServiceQuotaTemplateResponse {
        return try await self.client.execute(operation: "AssociateServiceQuotaTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the quota increase request for the specified quota from your quota request template.
    public func deleteServiceQuotaIncreaseRequestFromTemplate(_ input: DeleteServiceQuotaIncreaseRequestFromTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceQuotaIncreaseRequestFromTemplateResponse {
        return try await self.client.execute(operation: "DeleteServiceQuotaIncreaseRequestFromTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables your quota request template. After a template is disabled, the quota increase requests in the template are not applied to new accounts in your organization. Disabling a quota request template does not apply its quota increase requests.
    public func disassociateServiceQuotaTemplate(_ input: DisassociateServiceQuotaTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateServiceQuotaTemplateResponse {
        return try await self.client.execute(operation: "DisassociateServiceQuotaTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the default value for the specified quota. The default value does not reflect any quota increases.
    public func getAWSDefaultServiceQuota(_ input: GetAWSDefaultServiceQuotaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAWSDefaultServiceQuotaResponse {
        return try await self.client.execute(operation: "GetAWSDefaultServiceQuota", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the status of the association for the quota request template.
    public func getAssociationForServiceQuotaTemplate(_ input: GetAssociationForServiceQuotaTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssociationForServiceQuotaTemplateResponse {
        return try await self.client.execute(operation: "GetAssociationForServiceQuotaTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the specified quota increase request.
    public func getRequestedServiceQuotaChange(_ input: GetRequestedServiceQuotaChangeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRequestedServiceQuotaChangeResponse {
        return try await self.client.execute(operation: "GetRequestedServiceQuotaChange", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the applied quota value for the specified quota. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.
    public func getServiceQuota(_ input: GetServiceQuotaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServiceQuotaResponse {
        return try await self.client.execute(operation: "GetServiceQuota", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the specified quota increase request in your quota request template.
    public func getServiceQuotaIncreaseRequestFromTemplate(_ input: GetServiceQuotaIncreaseRequestFromTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServiceQuotaIncreaseRequestFromTemplateResponse {
        return try await self.client.execute(operation: "GetServiceQuotaIncreaseRequestFromTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the default values for the quotas for the specified AWS service. A default value does not reflect any quota increases.
    public func listAWSDefaultServiceQuotas(_ input: ListAWSDefaultServiceQuotasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAWSDefaultServiceQuotasResponse {
        return try await self.client.execute(operation: "ListAWSDefaultServiceQuotas", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the quota increase requests for the specified service.
    public func listRequestedServiceQuotaChangeHistory(_ input: ListRequestedServiceQuotaChangeHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRequestedServiceQuotaChangeHistoryResponse {
        return try await self.client.execute(operation: "ListRequestedServiceQuotaChangeHistory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the quota increase requests for the specified quota.
    public func listRequestedServiceQuotaChangeHistoryByQuota(_ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRequestedServiceQuotaChangeHistoryByQuotaResponse {
        return try await self.client.execute(operation: "ListRequestedServiceQuotaChangeHistoryByQuota", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the quota increase requests in the specified quota request template.
    public func listServiceQuotaIncreaseRequestsInTemplate(_ input: ListServiceQuotaIncreaseRequestsInTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListServiceQuotaIncreaseRequestsInTemplateResponse {
        return try await self.client.execute(operation: "ListServiceQuotaIncreaseRequestsInTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the applied quota values for the specified AWS service. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.
    public func listServiceQuotas(_ input: ListServiceQuotasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListServiceQuotasResponse {
        return try await self.client.execute(operation: "ListServiceQuotas", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the names and codes for the services integrated with Service Quotas.
    public func listServices(_ input: ListServicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListServicesResponse {
        return try await self.client.execute(operation: "ListServices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the tags assigned to the specified applied quota.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a quota increase request to your quota request template.
    public func putServiceQuotaIncreaseRequestIntoTemplate(_ input: PutServiceQuotaIncreaseRequestIntoTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutServiceQuotaIncreaseRequestIntoTemplateResponse {
        return try await self.client.execute(operation: "PutServiceQuotaIncreaseRequestIntoTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Submits a quota increase request for the specified quota.
    public func requestServiceQuotaIncrease(_ input: RequestServiceQuotaIncreaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RequestServiceQuotaIncreaseResponse {
        return try await self.client.execute(operation: "RequestServiceQuotaIncrease", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to the specified applied quota. You can include one or more tags to add to the quota.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the specified applied quota. You can specify one or more tags to remove.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
