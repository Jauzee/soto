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

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Macie2 {
    // MARK: Async API Calls

    /// Accepts an Amazon Macie membership invitation that was received from a specific account.
    public func acceptInvitation(_ input: AcceptInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptInvitationResponse {
        return try await self.client.execute(operation: "AcceptInvitation", path: "/invitations/accept", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about one or more custom data identifiers.
    public func batchGetCustomDataIdentifiers(_ input: BatchGetCustomDataIdentifiersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetCustomDataIdentifiersResponse {
        return try await self.client.execute(operation: "BatchGetCustomDataIdentifiers", path: "/custom-data-identifiers/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates and defines the settings for a classification job.
    public func createClassificationJob(_ input: CreateClassificationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClassificationJobResponse {
        return try await self.client.execute(operation: "CreateClassificationJob", path: "/jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates and defines the criteria and other settings for a custom data identifier.
    public func createCustomDataIdentifier(_ input: CreateCustomDataIdentifierRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomDataIdentifierResponse {
        return try await self.client.execute(operation: "CreateCustomDataIdentifier", path: "/custom-data-identifiers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates and defines the criteria and other settings for a findings filter.
    public func createFindingsFilter(_ input: CreateFindingsFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFindingsFilterResponse {
        return try await self.client.execute(operation: "CreateFindingsFilter", path: "/findingsfilters", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends an Amazon Macie membership invitation to one or more accounts.
    public func createInvitations(_ input: CreateInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInvitationsResponse {
        return try await self.client.execute(operation: "CreateInvitations", path: "/invitations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates an account with an Amazon Macie administrator account.
    public func createMember(_ input: CreateMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMemberResponse {
        return try await self.client.execute(operation: "CreateMember", path: "/members", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates sample findings.
    public func createSampleFindings(_ input: CreateSampleFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSampleFindingsResponse {
        return try await self.client.execute(operation: "CreateSampleFindings", path: "/findings/sample", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Declines Amazon Macie membership invitations that were received from specific accounts.
    public func declineInvitations(_ input: DeclineInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeclineInvitationsResponse {
        return try await self.client.execute(operation: "DeclineInvitations", path: "/invitations/decline", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Soft deletes a custom data identifier.
    public func deleteCustomDataIdentifier(_ input: DeleteCustomDataIdentifierRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomDataIdentifierResponse {
        return try await self.client.execute(operation: "DeleteCustomDataIdentifier", path: "/custom-data-identifiers/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a findings filter.
    public func deleteFindingsFilter(_ input: DeleteFindingsFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFindingsFilterResponse {
        return try await self.client.execute(operation: "DeleteFindingsFilter", path: "/findingsfilters/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes Amazon Macie membership invitations that were received from specific accounts.
    public func deleteInvitations(_ input: DeleteInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInvitationsResponse {
        return try await self.client.execute(operation: "DeleteInvitations", path: "/invitations/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the association between an Amazon Macie administrator account and an account.
    public func deleteMember(_ input: DeleteMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMemberResponse {
        return try await self.client.execute(operation: "DeleteMember", path: "/members/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes.
    public func describeBuckets(_ input: DescribeBucketsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBucketsResponse {
        return try await self.client.execute(operation: "DescribeBuckets", path: "/datasources/s3", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the status and settings for a classification job.
    public func describeClassificationJob(_ input: DescribeClassificationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClassificationJobResponse {
        return try await self.client.execute(operation: "DescribeClassificationJob", path: "/jobs/{jobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the Amazon Macie configuration settings for an Amazon Web Services organization.
    public func describeOrganizationConfiguration(_ input: DescribeOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationConfigurationResponse {
        return try await self.client.execute(operation: "DescribeOrganizationConfiguration", path: "/admin/configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables an Amazon Macie account and deletes Macie resources for the account.
    public func disableMacie(_ input: DisableMacieRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableMacieResponse {
        return try await self.client.execute(operation: "DisableMacie", path: "/macie", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables an account as the delegated Amazon Macie administrator account for an Amazon Web Services organization.
    public func disableOrganizationAdminAccount(_ input: DisableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableOrganizationAdminAccountResponse {
        return try await self.client.execute(operation: "DisableOrganizationAdminAccount", path: "/admin", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a member account from its Amazon Macie administrator account.
    public func disassociateFromAdministratorAccount(_ input: DisassociateFromAdministratorAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateFromAdministratorAccountResponse {
        return try await self.client.execute(operation: "DisassociateFromAdministratorAccount", path: "/administrator/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// (Deprecated) Disassociates a member account from its Amazon Macie administrator account. This operation has been replaced by the DisassociateFromAdministratorAccount operation.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateFromMasterAccountResponse {
        return try await self.client.execute(operation: "DisassociateFromMasterAccount", path: "/master/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates an Amazon Macie administrator account from a member account.
    public func disassociateMember(_ input: DisassociateMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateMemberResponse {
        return try await self.client.execute(operation: "DisassociateMember", path: "/members/disassociate/{id}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables Amazon Macie and specifies the configuration settings for a Macie account.
    public func enableMacie(_ input: EnableMacieRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableMacieResponse {
        return try await self.client.execute(operation: "EnableMacie", path: "/macie", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Designates an account as the delegated Amazon Macie administrator account for an Amazon Web Services organization.
    public func enableOrganizationAdminAccount(_ input: EnableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableOrganizationAdminAccountResponse {
        return try await self.client.execute(operation: "EnableOrganizationAdminAccount", path: "/admin", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the Amazon Macie administrator account for an account.
    public func getAdministratorAccount(_ input: GetAdministratorAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAdministratorAccountResponse {
        return try await self.client.execute(operation: "GetAdministratorAccount", path: "/administrator", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves (queries) aggregated statistical data for all the S3 buckets that Amazon Macie monitors and analyzes.
    public func getBucketStatistics(_ input: GetBucketStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBucketStatisticsResponse {
        return try await self.client.execute(operation: "GetBucketStatistics", path: "/datasources/s3/statistics", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the configuration settings for storing data classification results.
    public func getClassificationExportConfiguration(_ input: GetClassificationExportConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetClassificationExportConfigurationResponse {
        return try await self.client.execute(operation: "GetClassificationExportConfiguration", path: "/classification-export-configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the criteria and other settings for a custom data identifier.
    public func getCustomDataIdentifier(_ input: GetCustomDataIdentifierRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCustomDataIdentifierResponse {
        return try await self.client.execute(operation: "GetCustomDataIdentifier", path: "/custom-data-identifiers/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves (queries) aggregated statistical data about findings.
    public func getFindingStatistics(_ input: GetFindingStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFindingStatisticsResponse {
        return try await self.client.execute(operation: "GetFindingStatistics", path: "/findings/statistics", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the details of one or more findings.
    public func getFindings(_ input: GetFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFindingsResponse {
        return try await self.client.execute(operation: "GetFindings", path: "/findings/describe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the criteria and other settings for a findings filter.
    public func getFindingsFilter(_ input: GetFindingsFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFindingsFilterResponse {
        return try await self.client.execute(operation: "GetFindingsFilter", path: "/findingsfilters/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the configuration settings for publishing findings to Security Hub.
    public func getFindingsPublicationConfiguration(_ input: GetFindingsPublicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFindingsPublicationConfigurationResponse {
        return try await self.client.execute(operation: "GetFindingsPublicationConfiguration", path: "/findings-publication-configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the count of Amazon Macie membership invitations that were received by an account.
    public func getInvitationsCount(_ input: GetInvitationsCountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInvitationsCountResponse {
        return try await self.client.execute(operation: "GetInvitationsCount", path: "/invitations/count", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the current status and configuration settings for an Amazon Macie account.
    public func getMacieSession(_ input: GetMacieSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMacieSessionResponse {
        return try await self.client.execute(operation: "GetMacieSession", path: "/macie", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// (Deprecated) Retrieves information about the Amazon Macie administrator account for an account. This operation has been replaced by the GetAdministratorAccount operation.
    public func getMasterAccount(_ input: GetMasterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMasterAccountResponse {
        return try await self.client.execute(operation: "GetMasterAccount", path: "/master", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an account that's associated with an Amazon Macie administrator account.
    public func getMember(_ input: GetMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMemberResponse {
        return try await self.client.execute(operation: "GetMember", path: "/members/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves (queries) quotas and aggregated usage data for one or more accounts.
    public func getUsageStatistics(_ input: GetUsageStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUsageStatisticsResponse {
        return try await self.client.execute(operation: "GetUsageStatistics", path: "/usage/statistics", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves (queries) aggregated usage data for an account.
    public func getUsageTotals(_ input: GetUsageTotalsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUsageTotalsResponse {
        return try await self.client.execute(operation: "GetUsageTotals", path: "/usage", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a subset of information about one or more classification jobs.
    public func listClassificationJobs(_ input: ListClassificationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClassificationJobsResponse {
        return try await self.client.execute(operation: "ListClassificationJobs", path: "/jobs/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a subset of information about all the custom data identifiers for an account.
    public func listCustomDataIdentifiers(_ input: ListCustomDataIdentifiersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCustomDataIdentifiersResponse {
        return try await self.client.execute(operation: "ListCustomDataIdentifiers", path: "/custom-data-identifiers/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a subset of information about one or more findings.
    public func listFindings(_ input: ListFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFindingsResponse {
        return try await self.client.execute(operation: "ListFindings", path: "/findings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a subset of information about all the findings filters for an account.
    public func listFindingsFilters(_ input: ListFindingsFiltersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFindingsFiltersResponse {
        return try await self.client.execute(operation: "ListFindingsFilters", path: "/findingsfilters", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the Amazon Macie membership invitations that were received by an account.
    public func listInvitations(_ input: ListInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInvitationsResponse {
        return try await self.client.execute(operation: "ListInvitations", path: "/invitations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about all the managed data identifiers that Amazon Macie currently provides.
    public func listManagedDataIdentifiers(_ input: ListManagedDataIdentifiersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListManagedDataIdentifiersResponse {
        return try await self.client.execute(operation: "ListManagedDataIdentifiers", path: "/managed-data-identifiers/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the accounts that are associated with an Amazon Macie administrator account.
    public func listMembers(_ input: ListMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMembersResponse {
        return try await self.client.execute(operation: "ListMembers", path: "/members", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the delegated Amazon Macie administrator account for an Amazon Web Services organization.
    public func listOrganizationAdminAccounts(_ input: ListOrganizationAdminAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationAdminAccountsResponse {
        return try await self.client.execute(operation: "ListOrganizationAdminAccounts", path: "/admin", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates the configuration settings for storing data classification results.
    public func putClassificationExportConfiguration(_ input: PutClassificationExportConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutClassificationExportConfigurationResponse {
        return try await self.client.execute(operation: "PutClassificationExportConfiguration", path: "/classification-export-configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration settings for publishing findings to Security Hub.
    public func putFindingsPublicationConfiguration(_ input: PutFindingsPublicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutFindingsPublicationConfigurationResponse {
        return try await self.client.execute(operation: "PutFindingsPublicationConfiguration", path: "/findings-publication-configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves (queries) statistical data and other information about Amazon Web Services resources that Amazon Macie monitors and analyzes.
    public func searchResources(_ input: SearchResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchResourcesResponse {
        return try await self.client.execute(operation: "SearchResources", path: "/datasources/search-resources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or updates one or more tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tests a custom data identifier.
    public func testCustomDataIdentifier(_ input: TestCustomDataIdentifierRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TestCustomDataIdentifierResponse {
        return try await self.client.execute(operation: "TestCustomDataIdentifier", path: "/custom-data-identifiers/test", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags (keys and values) from a classification job, custom data identifier, findings filter, or member account.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the status of a classification job.
    public func updateClassificationJob(_ input: UpdateClassificationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClassificationJobResponse {
        return try await self.client.execute(operation: "UpdateClassificationJob", path: "/jobs/{jobId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the criteria and other settings for a findings filter.
    public func updateFindingsFilter(_ input: UpdateFindingsFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFindingsFilterResponse {
        return try await self.client.execute(operation: "UpdateFindingsFilter", path: "/findingsfilters/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Suspends or re-enables an Amazon Macie account, or updates the configuration settings for a Macie account.
    public func updateMacieSession(_ input: UpdateMacieSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMacieSessionResponse {
        return try await self.client.execute(operation: "UpdateMacieSession", path: "/macie", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables an Amazon Macie administrator to suspend or re-enable Macie for a member account.
    public func updateMemberSession(_ input: UpdateMemberSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMemberSessionResponse {
        return try await self.client.execute(operation: "UpdateMemberSession", path: "/macie/members/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the Amazon Macie configuration settings for an Amazon Web Services organization.
    public func updateOrganizationConfiguration(_ input: UpdateOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrganizationConfigurationResponse {
        return try await self.client.execute(operation: "UpdateOrganizationConfiguration", path: "/admin/configuration", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
