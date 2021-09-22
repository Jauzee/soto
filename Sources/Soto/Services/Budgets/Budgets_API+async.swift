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
extension Budgets {
    // MARK: Async API Calls

    /// Creates a budget and, if included, notifications and subscribers.   Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.
    public func createBudget(_ input: CreateBudgetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBudgetResponse {
        return try await self.client.execute(operation: "CreateBudget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a budget action.
    public func createBudgetAction(_ input: CreateBudgetActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBudgetActionResponse {
        return try await self.client.execute(operation: "CreateBudgetAction", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a notification. You must create the budget before you create the associated notification.
    public func createNotification(_ input: CreateNotificationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotificationResponse {
        return try await self.client.execute(operation: "CreateNotification", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a subscriber. You must create the associated budget and notification before you create the subscriber.
    public func createSubscriber(_ input: CreateSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubscriberResponse {
        return try await self.client.execute(operation: "CreateSubscriber", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a budget. You can delete your budget at any time.  Deleting a budget also deletes the notifications and subscribers that are associated with that budget.
    public func deleteBudget(_ input: DeleteBudgetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBudgetResponse {
        return try await self.client.execute(operation: "DeleteBudget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a budget action.
    public func deleteBudgetAction(_ input: DeleteBudgetActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBudgetActionResponse {
        return try await self.client.execute(operation: "DeleteBudgetAction", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a notification.  Deleting a notification also deletes the subscribers that are associated with the notification.
    public func deleteNotification(_ input: DeleteNotificationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotificationResponse {
        return try await self.client.execute(operation: "DeleteNotification", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a subscriber.  Deleting the last subscriber to a notification also deletes the notification.
    public func deleteSubscriber(_ input: DeleteSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSubscriberResponse {
        return try await self.client.execute(operation: "DeleteSubscriber", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a budget.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.
    public func describeBudget(_ input: DescribeBudgetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBudgetResponse {
        return try await self.client.execute(operation: "DescribeBudget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes a budget action detail.
    public func describeBudgetAction(_ input: DescribeBudgetActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBudgetActionResponse {
        return try await self.client.execute(operation: "DescribeBudgetAction", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes a budget action history detail.
    public func describeBudgetActionHistories(_ input: DescribeBudgetActionHistoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBudgetActionHistoriesResponse {
        return try await self.client.execute(operation: "DescribeBudgetActionHistories", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes all of the budget actions for an account.
    public func describeBudgetActionsForAccount(_ input: DescribeBudgetActionsForAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBudgetActionsForAccountResponse {
        return try await self.client.execute(operation: "DescribeBudgetActionsForAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes all of the budget actions for a budget.
    public func describeBudgetActionsForBudget(_ input: DescribeBudgetActionsForBudgetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBudgetActionsForBudgetResponse {
        return try await self.client.execute(operation: "DescribeBudgetActionsForBudget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the history for DAILY, MONTHLY, and QUARTERLY budgets. Budget history isn't available for ANNUAL budgets.
    public func describeBudgetPerformanceHistory(_ input: DescribeBudgetPerformanceHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBudgetPerformanceHistoryResponse {
        return try await self.client.execute(operation: "DescribeBudgetPerformanceHistory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the budgets that are associated with an account.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.
    public func describeBudgets(_ input: DescribeBudgetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBudgetsResponse {
        return try await self.client.execute(operation: "DescribeBudgets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the notifications that are associated with a budget.
    public func describeNotificationsForBudget(_ input: DescribeNotificationsForBudgetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotificationsForBudgetResponse {
        return try await self.client.execute(operation: "DescribeNotificationsForBudget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the subscribers that are associated with a notification.
    public func describeSubscribersForNotification(_ input: DescribeSubscribersForNotificationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscribersForNotificationResponse {
        return try await self.client.execute(operation: "DescribeSubscribersForNotification", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Executes a budget action.
    public func executeBudgetAction(_ input: ExecuteBudgetActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteBudgetActionResponse {
        return try await self.client.execute(operation: "ExecuteBudgetAction", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a budget. You can change every part of a budget except for the budgetName and the calculatedSpend. When you modify a budget, the calculatedSpend drops to zero until AWS has new usage data to use for forecasting.  Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.
    public func updateBudget(_ input: UpdateBudgetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBudgetResponse {
        return try await self.client.execute(operation: "UpdateBudget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a budget action.
    public func updateBudgetAction(_ input: UpdateBudgetActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBudgetActionResponse {
        return try await self.client.execute(operation: "UpdateBudgetAction", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a notification.
    public func updateNotification(_ input: UpdateNotificationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNotificationResponse {
        return try await self.client.execute(operation: "UpdateNotification", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a subscriber.
    public func updateSubscriber(_ input: UpdateSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSubscriberResponse {
        return try await self.client.execute(operation: "UpdateSubscriber", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)