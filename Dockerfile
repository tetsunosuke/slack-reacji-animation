FROM ruby

RUN git clone https://github.com/tetsunosuke/slack-reacji-animation.git && cd /slack-reacji-animation && bundle install

