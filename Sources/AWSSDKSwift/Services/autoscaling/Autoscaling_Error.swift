// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Core

/// Error enum for Autoscaling
public enum AutoscalingError: AWSErrorType {
    case invalidNextToken(message: String?)
    case resourceContentionFault(message: String?)
    case limitExceededFault(message: String?)
    case alreadyExistsFault(message: String?)
    case scalingActivityInProgressFault(message: String?)
    case resourceInUseFault(message: String?)
}

extension AutoscalingError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "InvalidNextToken":
            self = .invalidNextToken(message: message)
        case "ResourceContentionFault":
            self = .resourceContentionFault(message: message)
        case "LimitExceededFault":
            self = .limitExceededFault(message: message)
        case "AlreadyExistsFault":
            self = .alreadyExistsFault(message: message)
        case "ScalingActivityInProgressFault":
            self = .scalingActivityInProgressFault(message: message)
        case "ResourceInUseFault":
            self = .resourceInUseFault(message: message)
        default:
            return nil
        }
    }
}