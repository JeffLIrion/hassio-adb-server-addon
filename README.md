# Current Status

Not working...  The addon doesn't install.  


# Installation

In the Hass.io > Add-on Store tab, add this repository's URL: [https://github.com/JeffLIrion/hassio-adb-server-addon](https://github.com/JeffLIrion/hassio-adb-server-addon)


# Usage

## Addon

In the addon configuration, simply list the IP addresses of your devices.  For example:

```
{
  "devices": [
    "192.168.0.111",
    "192.168.0.222"
}
```


## Fire TV component

Use this version of the Fire TV component: [firetv.py](https://github.com/JeffLIrion/homeassistant_native_firetv/blob/pure-python-adb/media_player/firetv.py).  Your configuration should look like:

```yaml
media_player:
  - platform: firetv
    name: Fire TV
    host: 192.168.0.111
    adb_server_ip: 127.0.0.1
```


## Android TV component

Use this version of the Android TV component: [androidtv.py](https://github.com/a1ex4/home-assistant/blob/androidtv/homeassistant/components/media_player/androidtv.py).  Your configuration should look like:

```yaml
media_player:
  - platform: androidtv
    name: Android TV
    host: 192.168.0.222
    adb_server_ip: 127.0.0.1
```


# Contributing

Please do!  Please feel free to fork this addon and make fixes and improvements.  
