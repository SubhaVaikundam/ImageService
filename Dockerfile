FROM rails:latest

# Configure the main working directory. This is the base 
# directory used in any further RUN, COPY, and ENTRYPOINT 
# commands.
RUN mkdir -p /usr/src/app

# Set our working directory inside the image
WORKDIR /usr/src/app

# Copy the Gemfile as well as the Gemfile.lock and install 
# the RubyGems. This is a separate step so the dependencies 
# will be cached unless changes to one of those two files 
# are made.
COPY Gemfile /usr/src/app
COPY Gemfile.lock /usr/src/app

# Prevent bundler warnings; ensure that the bundler version executed is >= that which created Gemfile.lock
RUN gem install bundler --no-ri --no-rdoc 

RUN bundle install --without production test --jobs 20 --retry 5

# Copy the Rails application into place
#COPY . /usr/src/app
ADD . /usr/src/app
# Expose port 3000 to the Docker host, so we can access it from the outside.
#EXPOSE 3000

# The main command to run when the container starts. Also 
# tell the Rails dev server to bind to all interfaces by 
# default.
#CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]	