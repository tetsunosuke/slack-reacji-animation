FROM ruby

RUN git clone git@github.com:tetsunosuke/slack-reacji-animation.git && cd  slack-reacji-animation && bundle install

