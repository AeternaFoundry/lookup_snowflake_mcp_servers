data "snowflake_mcp_servers" "mcp_servers_lookup" {
  for_each = var.mcp_servers_lookup

  like          = each.value.like
  with_describe = each.value.with_describe

  dynamic "in" {
    for_each = each.value.in != null ? [each.value.in] : []
    content {
      account  = in.value.account
      database = in.value.database
      schema   = in.value.schema
    }
  }
}

