## Description

[Browse source
code](https://github.com/Sitwon/Byzantium/tree/master/control_panel).

## Features

## ToDo

-   Modify startup code to:
    -   Read configuration databases
    -   Test each existing entry against the current hardware
        configuration
        -   If they match, start it up using the stored settings
        -   If they don't, delete that stored setting
    -   Start up system services that are configured and active.
-   Modify the /index.html template to not show a sitrep but the current
    configuration from the databases

```{=mediawiki}
{{Template:Byzantium}}
```
