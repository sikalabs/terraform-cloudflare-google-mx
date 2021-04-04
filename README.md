# Terrafrom Cloudflare Google MX records Module

Terraform module for easy setup of your Google Workspace emails - DNS.

## Usage

Provide Cloudflare's Zone ID (for the domain you want to add the DNS records to) and a subdomain for which you want to setup these records.

For root domain, use `@`.

**NOTE**: This provider requires Cloudflare provider **2.19.2** or newer.

### Example

```hcl
locals {
  zone_id   = "" // Your Cloudflare's domain zone ID
  subdomain = "@" // Subdomain for which you want the MX records for, @ is for root domain
}

module "example_com_google_mx" {
  source    = "sikalabs/google-mx/cloudflare"
  zone_id   = local.zone_id
  subdomain = local.subdomain
}
```
