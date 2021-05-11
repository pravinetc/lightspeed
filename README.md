# Lightspeed SRE Challenge - "Office Locator"

## The Task

Your challenge: build a web service. It will receive a postcode and reply with a message like the following:

> For customers in {state}, Lightspeed's closest office is in {city}.

## Details

The marketing team have asked you to develop and deploy a new service. They want to add a "nearest office" lookup to [www.lightspeedhq.com.au](https://www.lightspeedhq.com.au/). Customers enter their postcode and are told which Lightspeed office is closest.

There are three Lightspeed offices in Australia:

* Sydney
* Melbourne
* Brisbane

Postcodes are a four digit number. Postcodes are assigned in blocks to states. The closest Lightspeed office for each block is listed below:

| Block | State | Nearest Office |
| --- | --- | --- |
| `0000-0999` | Northern Territory | Brisbane |
| `1000-1999` | New South Wales | Sydney |
| `2000-2999` | New South Wales | Sydney |
| `3000-3999` | Victoria | Melbourne |
| `4000-4999` | Queensland | Sydney |
| `5000-5999` | South Australia | Melbourne |
| `6000-6999` | Western Australia | Melbourne |
| `7000-7999` | Tasmania | Melbourne |
| `8000-8999` | Victoria | Melbourne |
| `9000-9999` | Queensland | Brisbane |

## Task Notes

The purpose of this challenge is to show your understanding of IaC/SRE/devops principles. We'll read your submission and then use it as a launchpad for discussions in the interview.

**What tools should you use?**

Use tools you are comfortable with ✌️

At Lightspeed, we would use some of: Terraform, AWS, Docker, Lambda, Kubernetes. Using these is fine, but it's not required.

We are more interested in your understanding of SRE principles than specific technologies. It's easiest to show your understanding when you use comfortable tools. So do that.

**The sort of questions we'll ask**

* Nice work. How does your submission work?
* How could we deploy changes automatically (continuous delivery)?
* Can we deploy the infrastructure separately from the code? Should we?
* How could this service fail?
* etc...

**Things we don't care about**

* Whether your solution is 100% complete / working
* The quality of your "application code" (we are hiring SREs, not developers :-)
