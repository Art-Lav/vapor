import Vapor

public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
    let serverConfig = NIOServerConfig.default(hostname: "127.0.0.1")
    services.register(serverConfig)

    let router = EngineRouter.default()
    try routes(router) 
    services.register(router, as: Router.self)

    // no middleware
    // services.register(MiddlewareConfig())

    // configure your application here
}
