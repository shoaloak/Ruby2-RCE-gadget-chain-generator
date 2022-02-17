FROM ruby:2.5-alpine
WORKDIR /app
COPY generator.rb .
ENTRYPOINT ./generator.rb "${PAYLOAD}"
