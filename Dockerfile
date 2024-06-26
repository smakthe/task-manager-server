# Use the official Ruby image as the base image
FROM ruby:3.3.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client

# Set an environment variable to skip installing gem documentation
ENV BUNDLE_PATH /gems

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . ./

# Install the Ruby dependencies
RUN bundle install

# Expose the port that the app runs on
EXPOSE 3001

# Start the Rails server
CMD ["bundle", "exec", "rails", "server"]