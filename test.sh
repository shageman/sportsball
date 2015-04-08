#!/bin/bash

exit_code=0

echo "*** Running container app specs"
bundle install | grep Installing
bundle exec rake db:drop
bundle exec rake db:create
bundle exec rake db:migrate
RAILS_ENV=test bundle exec rake db:create
RAILS_ENV=test bundle exec rake db:migrate
bundle exec rspec spec
exit_code+=$?

exit $exit_code

