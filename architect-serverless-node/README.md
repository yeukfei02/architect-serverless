# architect-serverless-node

architect-serverless-node

api url (staging): <https://tphutzntz8.execute-api.ap-southeast-1.amazonaws.com>

api url (production): <https://nwqx2fqchh.execute-api.ap-southeast-1.amazonaws.com>

## Requirement

- install yarn
- install node (v12+)
- install architect <https://github.com/architect/architect>

## Testing and run

```zsh
// test api in local
$ yarn run dev

// deploy to aws (staging)
$ yarn run deploy staging

// deploy to aws (production)
$ yarn run deploy production

// export sam.json
$ yarn run package

// set environment variables
$ yarn run env

// remove serverless services in aws
$ yarn run destroy
```
