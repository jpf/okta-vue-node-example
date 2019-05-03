# Basic CRUD with Vue.js and Node

This example app shows how to create a Node.js API and display its data with a Vue.js UI.

Please read [Build a Basic CRUD App with Vue.js and Node](https://developer.okta.com/blog/2018/02/15/build-crud-app-vuejs-node) to see how this app was created.

**Prerequisites:** [Node.js](https://nodejs.org/), Terraform, [Terraform Provider Okta](https://github.com/articulate/terraform-provider-okta)


> [Okta](https://developer.okta.com/) has Authentication and User Management APIs that reduce development time with instant-on, scalable user infrastructure. Okta's intuitive API and expert support make it easy for developers to authenticate, manage, and secure users and roles in any application.

* [Getting Started](#getting-started)
* [Links](#links)
* [Help](#help)
* [License](#license)

## Getting Started

To install this example application, run the following commands:

```bash
git clone https://github.com/oktadeveloper/okta-vue-node-example.git
cd okta-vue-node-example
npm install
tf init
```

Then, create an API Token in your Okta org, edit `terraform.tfvars`, then run:

```bash
tf apply
```

This will get a copy of the project installed locally, and use Terraform to configure your Okta org for this app. To start each app, follow the instructions below.

To run the server:

```bash
node ./src/server
```

To run the client:

```bash
npm run dev
```

## Links

This example uses the following libraries provided by Okta:

* [Okta JWT Verifier](https://github.com/okta/okta-oidc-js/tree/master/packages/jwt-verifier)
* [Okta Vue SDK](https://github.com/okta/okta-oidc-js/tree/master/packages/okta-vue)

## Help

Please post any questions as comments on the [blog post](https://developer.okta.com/blog/2018/02/15/build-crud-app-vuejs-node), or visit our [Okta Developer Forums](https://devforum.okta.com/). You can also email developers@okta.com if you would like to create a support ticket.

## License

Apache 2.0, see [LICENSE](LICENSE).
