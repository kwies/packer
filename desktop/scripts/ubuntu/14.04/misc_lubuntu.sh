
# remove light-locker
sudo apt-get purge -y light-locker 

# solve keyboard problem
sudo apt-get purge -y ibus
mkdir -p /home/${PACKERINSTALLUSERNAME}/.config/lxpanel/Lubuntu/panels
echo "# lxpanel <profile> config file. Manually editing is not recommended.
# Use preference dialog in lxpanel to adjust config when you can.

Global {
    edge=bottom
    allign=left
    margin=0
    widthtype=percent
    width=100
    height=24
    transparent=0
    tintcolor=#000000
    alpha=0
    autohide=0
    heightwhenhidden=2
    setdocktype=1
    setpartialstrut=1
    usefontcolor=1
    fontsize=10
    fontcolor=#000000
    usefontsize=0
    background=0
    backgroundfile=/usr/share/lxpanel/images/lubuntu-background.png
    iconsize=24
    loglevel=2
}

Plugin {
    type = menu
    Config {
        image=/usr/share/lubuntu/images/lubuntu-logo.png
        system {
        }
        separator {
        }
        item {
            command=run
        }
        separator {
        }
        item {
            image=gnome-logout
            command=logout
        }
    }
}

Plugin {
    type = launchbar
    Config {
        Button {
            id=pcmanfm.desktop
        }
        Button {
            id=lxde-x-www-browser.desktop
        }
    }
}

Plugin {
    type = space
    Config {
        Size=4
    }
}

Plugin {
    type = wincmd
    Config {
        image=window-manager
        Button1=iconify
        Button2=shade
        Toggle=0
    }
}

Plugin {
    type = space
    Config {
        Size=4
    }
}

Plugin {
    type = pager
}

Plugin {
    type = space
    Config {
        Size=4
    }
}

Plugin {
    type = taskbar
    expand=1
    Config {
        tooltips=1
        IconsOnly=0
        ShowAllDesks=0
        UseMouseWheel=1
        UseUrgencyHint=1
        FlatButton=0
        MaxTaskWidth=150
        spacing=1
        GroupedTasks=0
    }
}

Plugin {
    type = volumealsa
}

Plugin {
    type = xkb
    Config {
        DisplayType=2
        PerWinLayout=0
        NoResetOpt=0
        KeepSysLayouts=0
        Model=pc105
        LayoutsList=de,us
        VariantsList=,
        ToggleOpt=shift_caps_toggle
        FlagSize=6
    }
}

Plugin {
    type = tray
}

Plugin {
    type = indicator
    Config {
        applications=1
        datetime=0
        messages=0
        network=0
        session=0
        sound=0
    }
}

Plugin {
    type = dclock
    Config {
        ClockFmt=%R
        TooltipFmt=%A %x
        BoldFont=0
        IconOnly=0
        CenterText=0
    }
}

Plugin {
    type = launchbar
    Config {
        Button {
            id=lubuntu-logout.desktop
        }
    }
}" > /home/${PACKERINSTALLUSERNAME}/.config/lxpanel/Lubuntu/panels/panel
echo "[Command]
FileManager=lxsession-default filemanager
Terminal=lxsession-default terminal
Logout=lxsession-default quit" > /home/${PACKERINSTALLUSERNAME}/.config/lxpanel/Lubuntu/config
chown -R ${PACKERINSTALLUSERNAME}:${PACKERINSTALLUSERNAME} /home/${PACKERINSTALLUSERNAME}/.config/lxpanel/Lubuntu


mkdir -p /home/${PACKERINSTALLUSERNAME}/.config/xfce4/xfconf
echo '<?xml version="1.0" encoding="UTF-8"?>

<channel name="xfce4-power-manager" version="1.0">
  <property name="xfce4-power-manager" type="empty">
    <property name="power-button-action" type="empty"/>
    <property name="dpms-on-battery-sleep" type="uint" value="0"/>
    <property name="dpms-on-battery-off" type="uint" value="0"/>
    <property name="dpms-on-ac-sleep" type="uint" value="0"/>
    <property name="dpms-on-ac-off" type="uint" value="0"/>
  </property>
</channel>' > /home/${PACKERINSTALLUSERNAME}/.config/xfce4/xfconf/xfce-perchannel-xml
chown ${PACKERINSTALLUSERNAME}:${PACKERINSTALLUSERNAME} /home/${PACKERINSTALLUSERNAME}/.config/xfce4

# solve problem, that nm-applet indicator doesn't appear
echo 'nm-applet &' >> /home/${PACKERINSTALLUSERNAME}/.config/lxsession/Lubuntu/autostart
chown ${PACKERINSTALLUSERNAME}:${PACKERINSTALLUSERNAME} /home/${PACKERINSTALLUSERNAME}/.config/lxsession/Lubuntu/autostart


