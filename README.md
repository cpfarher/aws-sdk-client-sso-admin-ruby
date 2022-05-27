# aws-sdk-client-sso-admin-ruby

The main idea of this script is try to debug an issue with `ListInstanceCommand` on the JS library of `aws/aws-sdk-js-v3`. That command in js return `undefined` instances, while with the `CLI` implementation, and with this implementation using the equivalent library in `ruby` return 1 instance.

To test it, modify the `dev.env` file with secret key and access key from AWS and then execute `docker-compose up`


