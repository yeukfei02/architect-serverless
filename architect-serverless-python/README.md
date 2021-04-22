# architect-serverless-python

architect-serverless-python

api url (staging): <>

api url (production): <>

## Requirement

- install python (3.8)
- install pip3
- install architect <https://github.com/architect/architect>

## Testing and run

```zsh
// install python dependencies
$ cd path/to/lambda
$ pip3 install -r requirements.txt

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
