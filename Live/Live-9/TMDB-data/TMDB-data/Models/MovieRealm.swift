

import Foundation
import RealmSwift

class MovieRealm: Object {
    
    @Persisted(primaryKey: true) var id: Int
    @Persisted var adult: Bool
    @Persisted var backdropPath: String
    @Persisted var title: String
    @Persisted var mediaType: String
    @Persisted var popularity: Double
    @Persisted var releaseDate: String
    @Persisted var video: Bool
    @Persisted var voteAverage: Double
    @Persisted var voteCount: Int
    
}
