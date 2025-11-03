MATCH (u:User {id: 'u1'})-[:FOLLOWS]->(a:Artist)<-[:BY]-(t:Track)
WHERE NOT (u)-[:LISTENED]->(t)
RETURN t.title AS RecommendedTrack, a.name AS Artist

