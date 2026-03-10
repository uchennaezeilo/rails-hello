FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y nodejs npm sqlite3 libsqlite3-dev

WORKDIR /app

# Install Rails
RUN gem install rails

# Copy Gem files first (for better Docker caching)
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the project
COPY . .

EXPOSE 3000