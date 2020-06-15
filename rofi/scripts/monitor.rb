#!/usr/bin/ruby

layouts = [
  {
    "name": "laptop",
    "command": "xrandr --output eDP-1-1 --primary --output HDMI-0 --off"
  },
  {
    "name": "(external, laptop)",
    "command": "xrandr --output HDMI-1-2 --off --output HDMI-1-1 --off --output eDP-1-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-1 --off"
  },
  {
    "name": "(laptop, external)",
    "command": "xrandr --output HDMI-1-2 --off --output HDMI-1-1 --off --output eDP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-2 --off --output DP-1-1 --off"
  }
]
rofi_command="rofi"
options = layouts.map { |item| item[:name] }.join('\n')

chosen=`echo \"#{options}\" | #{rofi_command} -dmenu -selected-row 0`
chosen.delete!("\n")

layout = layouts.find {|l| l[:name] === chosen }
system("#{layout[:command]}")
