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
```

### Install Terraform

This demo makes use of Terraform to automatically configure your Okta org for you.

Make sure that you've done the following before going any further:
- [Install Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [Install Go](https://golang.org/doc/install)
- [Install gox](https://github.com/mitchellh/gox#installation)
- [Install the Okta Terraform Provider from Articulate](https://github.com/articulate/terraform-provider-okta#building-the-provider)


### Run Terraform

Once you've installed Terraform, run the commands below *from the* `okta-vue-node-example` *directory*:

Start by making a copy of the example Terraform `terraform.tfvars.example` file:

``` bash
cp terraform.tfvars.example terraform.tfvars
```

Next, [create and API token](https://developer.okta.com/docs/api/getting_started/getting_a_token/) for your Okta org.

Then, using your favorite text editor, edit the `terraform.tfvars` file to relfect the settings for your Okta org.

Once you've edited `terraform.tfvars`, you're ready to run Terraform. Start by having Terraform install the requisite plugins:

```
terraform init
```

Lastly, apply Okta configuration located in `setup.tf` by running this command:

```bash
terraform apply
```

### Start the app
At this point, you will have a copy of the project installed locally, and (thanks to Terraform) have your Okta org configured for this app. To start each app, follow the instructions below.

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
