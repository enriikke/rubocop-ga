FROM ruby:2.5-alpine

LABEL "name"="Rucobop"
LABEL "version"="0.0.1"

LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.name"="Rubocop"
LABEL "com.github.actions.description"="Runs rubocop on the entire project."

RUN apk update && apk upgrade && apk add build-base
RUN gem install rubocop

ENTRYPOINT ["rubocop"]
