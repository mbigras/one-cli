FROM alpine:edge
RUN apk add \
	git \
	ruby-bundler \
	ruby-full
WORKDIR /app
COPY . .
RUN bundle install --without test
ENTRYPOINT ["bundle", "exec", "one"]