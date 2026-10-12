output "mcp_servers_lookup_id" {
  description = "Map of id values across all mcp_servers_lookup, keyed the same as var.mcp_servers_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_mcp_servers.mcp_servers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mcp_servers_lookup_in" {
  description = "Map of in values across all mcp_servers_lookup, keyed the same as var.mcp_servers_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_mcp_servers.mcp_servers_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "mcp_servers_lookup_like" {
  description = "Map of like values across all mcp_servers_lookup, keyed the same as var.mcp_servers_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_mcp_servers.mcp_servers_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "mcp_servers_lookup_mcp_servers" {
  description = "Map of mcp_servers values across all mcp_servers_lookup, keyed the same as var.mcp_servers_lookup except keys with no mcp_servers are omitted"
  value       = { for k, v in data.snowflake_mcp_servers.mcp_servers_lookup : k => v.mcp_servers if v.mcp_servers != null && length(v.mcp_servers) > 0 }
}
output "mcp_servers_lookup_with_describe" {
  description = "Map of with_describe values across all mcp_servers_lookup, keyed the same as var.mcp_servers_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_mcp_servers.mcp_servers_lookup : k => v.with_describe if v.with_describe != null }
}

