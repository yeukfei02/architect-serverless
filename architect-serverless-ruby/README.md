# architect-serverless-ruby

architect-serverless-ruby

api url (staging): <>

api url (production): <>

## Requirement

- install ruby (2.7)
- install gem
- install bundle
- install architect <https://github.com/architect/architect>

## Testing and run

```zsh
// install ruby dependencies
$ cd path/to/lambda
$ bundle install --path vendor/bundle

// test api in local
$ arc sandbox

// deploy to aws (staging)
$ arc deploy

// deploy to aws (production)
$ arc deploy production

// export sam.json
$ arc package

// set environment variables
$ arc env

// remove serverless services in aws
$ arc destroy
```
