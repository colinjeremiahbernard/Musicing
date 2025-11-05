# Musicing — Neo4j Aura Project

## 🔗 Connection Details
- **URI**: `neo4j+s://02f315c2.databases.neo4j.io`
- **Username**: `neo4j`
- **Password**: `Anseam&618042`

## 📁 Contents
-![Graph Schema](schema.png)
-![Graph Screenshot](graph-screenshot.png)


- `schema.cypher` — Node labels, relationships, and constraints
- `import.cypher` — Data import queries
- `movies.csv` — Sample dataset (20 rows)
- `sample-queries.cypher` — Example queries for validation

## 🛠️ Notes
- Tested in Neo4j Aura and browser UI
- VS Code integration optional; not required for functionality
- CSV import simulated locally due to Aura loader constraints

## ✅ How to Use
1. Open [Neo4j Aura Console](https://console.neo4j.io/)
2. Connect using the URI and credentials above
3. Run `schema.cypher` and `import.cypher`
4. Validate with `sample-queries.cypher`

# 🎵 Neo4j Music Graph Demo

This project sets up a realistic music recommendation graph in Neo4j using real artists, tracks, genres, and user interactions.

## 📦 Contents

- `setup.cypher` — Creates all nodes and relationships
- `README.md` — Overview and usage instructions

## 🧠 Schema Overview

- `(:User)-[:FOLLOWS]->(:Artist)`
- `(:Track)-[:BY]->(:Artist)`
- `(:Track)-[:IN_GENRE]->(:Genre)`
- `(:User)-[:LISTENED]->(:Track)`

## 🚀 Setup Instructions

1. Open Neo4j Browser or Neo4j Aura Console
2. Paste and run the contents of `setup.cypher`
3. Confirm that user `u1` exists and is connected to artists and tracks

## 🧪 Test Query

Run this query to get track recommendations for user `u1` based on followed artists:

```cypher
MATCH (u:User {id: 'u1'})-[:FOLLOWS]->(a:Artist)<-[:BY]-(t:Track)
WHERE NOT (u)-[:LISTENED]->(t)
RETURN t.title AS RecommendedTrack, a.name AS Artist;
