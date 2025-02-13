CREATE TABLE IF NOT EXISTS task(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64),
    summary VARCHAR(128),
    description TEXT,
    is_done BOOLEAN DEFAULT 0
);

INSERT INTO task (
    name,
    summary,
    description
) VALUES
(
    "Do laundry!",
    "Make sure to separate the colors and whites",
    "Don't forget to fold the clothes once they're dry"
),
(
    "Clean the car",
    "Give the car a good wash, inside and out",
    "Vacuum the interior and wipe down the dashboard"
),
(
    "Prepare dinner",
    "Make sure to cook something healthy for dinner tonight",
    "We need chicken, broccoli, and quinoa for the recipe"
);