provider "datadog" {
}
   
resource "datadog_monitor" "cpumonitor" {
   name    = "CPU"
   type    = "metric alert"
   query   = "avg(last_5m):avg:kubernetes.kubelet.cpu.usage{*} > 40000000"
   message = "{{#is_alert}}Alert CPU usages{{/is_alert}} @pagerduty-spring \n{{#is_warning}}Warning CPU usages{{/is_warning}} @pagerduty-spring "
 
   notify_audit           = false
   locked                 = false
   timeout_h              = 0
   new_host_delay         = 300
   require_full_window    = true
   notify_no_data         = false
   renotify_interval      = "0"
   escalation_message     = ""
   no_data_timeframe      = null
   include_tags           = true
   thresholds = {
       critical = 40000000
       warning  = 30000000
     }
}

resource "datadog_monitor" "memoryusage" {
   name    = "Memory usage"
   type    = "metric alert"
   query   = "avg(last_5m):avg:kubernetes.memory.usage{*} > 70000000"
   message = "{{#is_alert}}Alert memory{{/is_alert}} @pagerduty-spring \n{{#is_warning}}Warning CPU memory{{/is_warning}} @pagerduty-spring "
 
   notify_audit           = false
   locked                 = false
   timeout_h              = 0
   new_host_delay         = 300
   require_full_window    = true
   notify_no_data         = false
   renotify_interval      = "0"
   escalation_message     = ""
   no_data_timeframe      = null
   include_tags           = true
   thresholds = {
       critical = 70000000
       warning  = 49000000
     }
}
