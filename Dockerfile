FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.0

RUN gem install apktools --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["get_app_version.rb"]
CMD ["--help"]
