resource "datadog_synthetics_test" "beacon" {
  type    = "api"
  subtype = "http"

  request = {
    method = "GET"
    url    = "<Katacoda_Host_URL>"
  }

  assertion {
    type     = "statusCode"
    operator = "is"
    target   = "200"
  }

  locations = ["aws:us-west-2"]
  options_list {
    tick_every          = 900
    min_location_failed = 1
  }

  name    = "Beacon API Check"
  message = "Oh no! Light from the Beacon app is no longer shining!"
  tags    = ["app:beacon", "env:demo"]

  status = "live"
}
