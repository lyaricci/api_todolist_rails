# API Todolist Ruby on Rails

This is a simple example of a todolist API created with Ruby on Rails.

## Endpoints

> *All endpoints return JSON.*

### GET /tasks

Returns a list of tasks.

### GET /tasks/:id

Returns a task by its id.

### GET /tasks/completed

Returns a list of tasks marked as completed.

### GET /tasks/incomplete

Returns a list of tasks marked as incomplete.

### POST /tasks

Creates a new task. Parameters:

- *required* `title` (string): The task title
- *optional* `description` (string): The task description
- *required* `completed` (boolean): Whether the task is completed or not

### PATCH /tasks/:id

Updates a task. Parameters:

- *required* `title` (string): NEW task title
- *optional* `description` (string): NEW task description
- *required* `completed` (boolean): NEW task status

### DELETE /tasks/:id

Deletes a task.
