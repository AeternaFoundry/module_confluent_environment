resource "confluent_environment" "environments" {
  for_each = var.environments

  display_name = each.value.display_name

  dynamic "stream_governance" {
    for_each = each.value.stream_governance != null ? [each.value.stream_governance] : []
    content {
      package = stream_governance.value.package
    }
  }
}

