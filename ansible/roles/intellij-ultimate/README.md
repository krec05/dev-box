# Ansible Role: IntelliJ Ultimate
This Ansible role is used to install IntelliJ Ultimate including the 
following plugins
* Eclipse Code Formatter
* .ignore
* Batch Support
* Jakarta EE: EJB
* Jakarta EE: JSF
* PMD
* Save Actions

## Adding more plugins
To add another plugin during installation, the variable "*plugins*" must be 
extended under defaults/main.yml. Here "*plugin_name*" corresponds to the name 
of the plugin, "*plugin_dir*" to the name of the jar file from the plugin or 
the directory which is created when unpacking the zip file. To determine the 
value for "*plugin_number*", you have to search for the desired plugin on the 
[plugin page](https://plugins.jetbrains.com/idea). On the detail page of the 
plugin, the plugin number is displayed in the URL.