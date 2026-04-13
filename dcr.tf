resource "azurerm_monitor_data_collection_rule" "example" {
  name                = "dcr-example"
  resource_group_name = "rg-sentinel-migration"
  location            = var.resource_group_location

  destinations {
    log_analytics {
      name                  = "tanilaw01"
      workspace_resource_id = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-td-vs01/providers/Microsoft.OperationalInsights/workspaces/tanilaw01"
    }
  }
  data_flow {
    streams       = ["Custom-Example_CL"]
    destinations  = ["tanilaw01"]
    output_stream = "Custom-Example_CL"
  }
  stream_declaration {
    stream_name = "Custom-Example_CL"
    column {
      name = "TimeGenerated"
      type = "datetime"
    }
    column {
      name = "Level"
      type = "string"
    }
    column {
      name = "Logger"
      type = "string"
    }
    column {
      name = "Context"
      type = "string"
    }
    column {
      name = "Message"
      type = "string"
    }
    column {
      name = "AdditionalContext"
      type = "string"
    }
  }
}







resource "azurerm_monitor_data_collection_rule" "example2" {
  name                = "dcr2-example"
  resource_group_name = "rg-sentinel-migration"
  location            = var.resource_group_location
  kind                = "AgentDirectToStore"


  destinations {
    log_analytics {
      name                  = "tanilaw01"
      workspace_resource_id = "/subscriptions/f1e531f4-e1b0-486c-bb3c-a2e0a49d0121/resourceGroups/rg-td-vs01/providers/Microsoft.OperationalInsights/workspaces/tanilaw01"
    }
  }
  data_flow {
    streams       = ["Custom-Example2_CL"]
    destinations  = ["tanilaw01"]
    output_stream = "Custom-Example2_CL"
  }
  stream_declaration {
    stream_name = "Custom-Example2_CL"
    column {
      name = "TimeGenerated"
      type = "datetime"
    }
    column {
      name = "Level"
      type = "string"
    }
    column {
      name = "Logger"
      type = "string"
    }
    column {
      name = "Context"
      type = "string"
    }
    column {
      name = "Message"
      type = "string"
    }
    column {
      name = "AdditionalContext"
      type = "string"
    }
  }
}
