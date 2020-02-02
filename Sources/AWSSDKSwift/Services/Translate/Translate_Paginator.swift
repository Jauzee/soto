// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Translate {

    ///  Provides a list of custom terminologies associated with your account.
    public func listTerminologiesPaginator(_ input: ListTerminologiesRequest, onPage: @escaping (ListTerminologiesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTerminologies, tokenKey: \ListTerminologiesResponse.nextToken, onPage: onPage)
    }

    ///  Gets a list of the batch translation jobs that you have submitted.
    public func listTextTranslationJobsPaginator(_ input: ListTextTranslationJobsRequest, onPage: @escaping (ListTextTranslationJobsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTextTranslationJobs, tokenKey: \ListTextTranslationJobsResponse.nextToken, onPage: onPage)
    }

}

extension Translate.ListTerminologiesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Translate.ListTerminologiesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Translate.ListTextTranslationJobsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Translate.ListTextTranslationJobsRequest {
        return .init(
            filter: self.filter, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

