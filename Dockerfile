FROM ruby:3.2-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /srv/jekyll

# Copy Gemfile first for caching
COPY Gemfile ./

# Install bundler and gems
RUN gem install bundler && \
    bundle install

# Copy the rest of the project
COPY . .

# Expose port
EXPOSE 4000

# Default command
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]
