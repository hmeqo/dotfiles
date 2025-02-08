var plasma = getApiVersion(1);

var layout = {
    "desktops": [
        {
            "applets": [
                {
                    "config": {
                    },
                    "geometry.height": 0,
                    "geometry.width": 0,
                    "geometry.x": 0,
                    "geometry.y": 0,
                    "plugin": "com.github.prayag2.modernclock",
                    "title": "Modern Clock"
                }
            ],
            "config": {
                "/": {
                    "ItemGeometries-0x0": "Applet-53:640,368,656,160,0;",
                    "ItemGeometries-1920x1080": "Applet-53:640,368,656,160,0;",
                    "ItemGeometriesHorizontal": "Applet-53:640,368,656,160,0;",
                    "formfactor": "0",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "1056",
                    "DialogWidth": "1920"
                },
                "/Wallpaper/org.kde.image/General": {
                    "Image": "/home/hmeqo/.local/share/wallpapers/kde/wallhaven3.jpg",
                    "PreviewImage": "/home/hmeqo/.local/share/wallpapers/kde/wallhaven3.jpg",
                    "SlidePaths": "/home/hmeqo/.local/share/wallpapers/,/usr/share/wallpapers/"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        }
    ],
    "panels": [
        {
            "alignment": "center",
            "applets": [
                {
                    "config": {
                        "/": {
                            "PreloadWeight": "100",
                            "popupHeight": "512",
                            "popupWidth": "707"
                        },
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/General": {
                            "favoritesPortedToKAstats": "true",
                            "icon": "/home/hmeqo/.local/share/icons/logo/arch_linux_dark.svg",
                            "systemFavorites": "suspend\\,hibernate\\,reboot\\,shutdown"
                        },
                        "/Shortcuts": {
                            "global": "Alt+F1"
                        }
                    },
                    "plugin": "org.kde.plasma.simplekickoff"
                },
                {
                    "config": {
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/General": {
                            "groupingAppIdBlacklist": "org.kde.plasmashell.desktop",
                            "groupingLauncherUrlBlacklist": "applications:org.kde.plasmashell.desktop",
                            "launchers": "applications:systemsettings.desktop,preferred://filemanager,preferred://browser,applications:code.desktop",
                            "showOnlyCurrentDesktop": "false"
                        }
                    },
                    "plugin": "org.kde.plasma.icontasks"
                }
            ],
            "config": {
                "/": {
                    "formfactor": "2",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                }
            },
            "height": 3.3333333333333335,
            "hiding": "dodgewindows",
            "location": "bottom",
            "maximumLength": 106.66666666666667,
            "minimumLength": 106.66666666666667,
            "offset": 0
        },
        {
            "alignment": "center",
            "applets": [
                {
                    "config": {
                        "/General": {
                            "expanding": "false",
                            "length": "4"
                        }
                    },
                    "plugin": "org.kde.plasma.panelspacer"
                },
                {
                    "config": {
                        "/Appearance": {
                            "widgetButtonsAuroraeTheme": "summaculate-night-opaque",
                            "widgetButtonsIconsTheme": "Aurorae",
                            "widgetButtonsMargins": "2",
                            "widgetElements": "windowCloseButton,windowMinimizeButton,windowMaximizeButton,windowIcon,windowTitle",
                            "widgetElementsMaximized": "windowCloseButton,windowMinimizeButton,windowMaximizeButton,windowIcon,windowTitle",
                            "widgetMargins": "2",
                            "widgetSpacing": "6",
                            "windowTitleFontBold": "false",
                            "windowTitleFontSize": "10",
                            "windowTitleHideEmpty": "true",
                            "windowTitleMarginsLeft": "0",
                            "windowTitleMarginsRight": "4",
                            "windowTitleSource": "AppName",
                            "windowTitleSourceMaximized": "AppName",
                            "windowTitleUndefined": ""
                        },
                        "/ConfigDialog": {
                            "DialogHeight": "511",
                            "DialogWidth": "720"
                        }
                    },
                    "plugin": "com.github.antroids.application-title-bar"
                },
                {
                    "config": {
                        "/ConfigDialog": {
                            "DialogHeight": "510",
                            "DialogWidth": "680"
                        }
                    },
                    "plugin": "org.kde.plasma.appmenu"
                },
                {
                    "config": {
                        "/General": {
                            "expanding": "false",
                            "length": "4"
                        }
                    },
                    "plugin": "org.kde.plasma.panelspacer"
                },
                {
                    "config": {
                    },
                    "plugin": "org.kde.plasma.panelspacer"
                },
                {
                    "config": {
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/General": {
                            "boldOnActive": "true",
                            "spacingHorizontal": "16"
                        }
                    },
                    "plugin": "org.kde.plasma.plasm6desktopindicator"
                },
                {
                    "config": {
                    },
                    "plugin": "org.kde.plasma.panelspacer"
                },
                {
                    "config": {
                        "/General": {
                            "expanding": "false",
                            "length": "4"
                        }
                    },
                    "plugin": "org.kde.plasma.panelspacer"
                },
                {
                    "config": {
                        "/ConfigDialog": {
                            "DialogHeight": "510",
                            "DialogWidth": "680"
                        },
                        "/General": {
                            "fontSize": "75",
                            "shortUnits": "true",
                            "showLowSpeeds": "true",
                            "speedLayout": "columns"
                        }
                    },
                    "plugin": "org.kde.netspeedWidget"
                },
                {
                    "config": {
                        "/": {
                            "PreloadWeight": "100"
                        }
                    },
                    "plugin": "org.kde.plasma.systemtray"
                },
                {
                    "config": {
                        "/": {
                            "PreloadWeight": "100",
                            "popupHeight": "484",
                            "popupWidth": "814"
                        },
                        "/Appearance": {
                            "autoFontAndSize": "false",
                            "dateDisplayFormat": "BesideTime",
                            "enabledCalendarPlugins": "alternatecalendar,holidaysevents",
                            "fontFamily": "Maple Mono NF",
                            "fontSize": "7",
                            "fontStyleName": "Regular",
                            "fontWeight": "400",
                            "showDate": "false",
                            "showSeconds": "Always"
                        },
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        }
                    },
                    "plugin": "org.kde.plasma.digitalclock"
                },
                {
                    "config": {
                        "/General": {
                            "expanding": "false",
                            "length": "4"
                        }
                    },
                    "plugin": "org.kde.plasma.panelspacer"
                }
            ],
            "config": {
                "/": {
                    "formfactor": "2",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                }
            },
            "height": 1.3333333333333333,
            "hiding": "normal",
            "location": "top",
            "maximumLength": 106.66666666666667,
            "minimumLength": 106.66666666666667,
            "offset": 0
        }
    ],
    "serializationFormatVersion": "1"
}
;

plasma.loadSerializedLayout(layout);

