//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

internal class UserAPI {

    /**
     Create user
     
     - parameter body: (body) Created user object 
     - parameter apiConfiguration: The configuration for the http request.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    internal class func createUser(body: User, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared, completion: @Sendable @escaping (_ result: Swift.Result<Void, ErrorResponse>) -> Void) -> RequestTask {
        return createUserWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create user
     - POST /user
     - This can only be done by the logged in user.
     - parameter body: (body) Created user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    internal class func createUserWithRequestBuilder(body: User, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/user"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - parameter apiConfiguration: The configuration for the http request.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    internal class func createUsersWithArrayInput(body: [User], apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared, completion: @Sendable @escaping (_ result: Swift.Result<Void, ErrorResponse>) -> Void) -> RequestTask {
        return createUsersWithArrayInputWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithArray
     - parameter body: (body) List of user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    internal class func createUsersWithArrayInputWithRequestBuilder(body: [User], apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/user/createWithArray"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - parameter apiConfiguration: The configuration for the http request.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    internal class func createUsersWithListInput(body: [User], apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared, completion: @Sendable @escaping (_ result: Swift.Result<Void, ErrorResponse>) -> Void) -> RequestTask {
        return createUsersWithListInputWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithList
     - parameter body: (body) List of user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    internal class func createUsersWithListInputWithRequestBuilder(body: [User], apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/user/createWithList"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - parameter apiConfiguration: The configuration for the http request.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    internal class func deleteUser(username: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared, completion: @Sendable @escaping (_ result: Swift.Result<Void, ErrorResponse>) -> Void) -> RequestTask {
        return deleteUserWithRequestBuilder(username: username, apiConfiguration: apiConfiguration).execute { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Delete user
     - DELETE /user/{username}
     - This can only be done by the logged in user.
     - parameter username: (path) The name that needs to be deleted 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    internal class func deleteUserWithRequestBuilder(username: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/user/{username}"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing. 
     - parameter apiConfiguration: The configuration for the http request.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    internal class func getUserByName(username: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared, completion: @Sendable @escaping (_ result: Swift.Result<User, ErrorResponse>) -> Void) -> RequestTask {
        return getUserByNameWithRequestBuilder(username: username, apiConfiguration: apiConfiguration).execute { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get user by user name
     - GET /user/{username}
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<User> 
     */
    internal class func getUserByNameWithRequestBuilder(username: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<User> {
        var localVariablePath = "/user/{username}"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<User>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Logs user into the system
     
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 
     - parameter apiConfiguration: The configuration for the http request.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    internal class func loginUser(username: String, password: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared, completion: @Sendable @escaping (_ result: Swift.Result<String, ErrorResponse>) -> Void) -> RequestTask {
        return loginUserWithRequestBuilder(username: username, password: password, apiConfiguration: apiConfiguration).execute { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Logs user into the system
     - GET /user/login
     - responseHeaders: [X-Rate-Limit(Int), X-Expires-After(Date)]
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<String> 
     */
    internal class func loginUserWithRequestBuilder(username: String, password: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<String> {
        let localVariablePath = "/user/login"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "username": (wrappedValue: username.encodeToQueryString(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "password": (wrappedValue: password.encodeToQueryString(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Logs out current logged in user session
     
     - parameter apiConfiguration: The configuration for the http request.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    internal class func logoutUser(apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared, completion: @Sendable @escaping (_ result: Swift.Result<Void, ErrorResponse>) -> Void) -> RequestTask {
        return logoutUserWithRequestBuilder(apiConfiguration: apiConfiguration).execute { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Logs out current logged in user session
     - GET /user/logout
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    internal class func logoutUserWithRequestBuilder(apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/user/logout"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 
     - parameter apiConfiguration: The configuration for the http request.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    internal class func updateUser(username: String, body: User, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared, completion: @Sendable @escaping (_ result: Swift.Result<Void, ErrorResponse>) -> Void) -> RequestTask {
        return updateUserWithRequestBuilder(username: username, body: body, apiConfiguration: apiConfiguration).execute { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Updated user
     - PUT /user/{username}
     - This can only be done by the logged in user.
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    internal class func updateUserWithRequestBuilder(username: String, body: User, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/user/{username}"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
