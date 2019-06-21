

import FluentSQLite
import FluentRepository

/// A concrete base repository class for sqlite.
/// - seealso: `FluentRepository`
open class SQLiteRepository<M, R>: Repository<M> where M: Model, M.Database == SQLiteDatabase { }

extension SQLiteRepository: ServiceType {
    
    public static func makeService(for container: Container) throws -> Self {
        let db = try container.connectionPool(to: .sqlite)
        return try .init(db, on: container)
        
    }
    
    public static var serviceSupports: [Any.Type] {
        return [R.self]
    }
}
