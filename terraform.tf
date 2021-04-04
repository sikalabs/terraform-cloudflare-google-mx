variable "zone_id" {
  type = string
}

variable "subdomain" {
  type = string
}

resource "cloudflare_record" "mx_aspmx" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "aspmx.l.google.com"
  type     = "MX"
  priority = 1
}

resource "cloudflare_record" "mx_alt1" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "alt1.aspmx.l.google.com"
  type     = "MX"
  priority = 5
}

resource "cloudflare_record" "mx_alt2" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "alt2.aspmx.l.google.com"
  type     = "MX"
  priority = 5
}

resource "cloudflare_record" "mx_alt3" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "alt3.aspmx.l.google.com"
  type     = "MX"
  priority = 10
}

resource "cloudflare_record" "mx_alt4" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "alt4.aspmx.l.google.com"
  type     = "MX"
  priority = 10
}
