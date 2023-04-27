FROM ruby:3.2.2-alpine

ARG APP_ROOT

RUN apk update && apk add bash make gcc g++ git tzdata libpq-dev

COPY . $APP_ROOT

WORKDIR $APP_ROOT

RUN bundle install

CMD bash -c "rails db:migrate && rm -f tmp/pids/server.pid && rails server"
