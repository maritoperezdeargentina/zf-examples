CREATE TABLE IF NOT EXISTS polls (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name VARCHAR(256) NOT NULL
);

CREATE TABLE IF NOT EXISTS questions (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    poll_id INTEGER NOT NULL,
    question TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS answers (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    question_id INTEGER NOT NULL,
    answer TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS votes (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    answer_id INTEGER NOT NULL,
    ip_address INTEGER NOT NULL,
    user_agent TEXT NOT NULL,
    session_id TEXT NOT NULL
);
