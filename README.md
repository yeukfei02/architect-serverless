# architect-serverless

architect-serverless

## Requirement

- install yarn
- install node (v12+)
- install architect <https://github.com/architect/architect>

## Testing and run

```zsh
// test api in local
$ yarn run dev

// deploy to aws (staging)
$ yarn run deploy:staging

// deploy to aws (production)
$ yarn run deploy:production

// export sam.json
$ yarn run package

// set environment variables
$ yarn run env

// remove serverless services in aws
$ yarn run destroy
```
