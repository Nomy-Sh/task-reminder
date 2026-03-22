# Task Reminder

A Ruby application for managing and reminding you of your tasks.

## Features

- Create and manage tasks
- Set reminders for important deadlines
- Track task completion status

## Prerequisites

- Ruby 2.7 or higher
- Rails 6.0 or higher
- SQLite or PostgreSQL

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Nomy-Sh/task-reminder.git
   cd task-reminder
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

## Usage

Start the Rails server:
```bash
rails server
```

Visit `http://localhost:3000` in your browser to access the application.

## Configuration

Create a `.env` file in the root directory with any necessary environment variables:
```
DATABASE_URL=your_database_url
RAILS_ENV=development
```

## Running Tests

```bash
rails test
```

## Deployment

To deploy to a production environment:

1. Set up your hosting platform (Heroku, AWS, etc.)
2. Configure environment variables for production
3. Run database migrations: `rails db:migrate RAILS_ENV=production`
4. Start the server

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License.

## Support

For questions or issues, please open an issue on GitHub.