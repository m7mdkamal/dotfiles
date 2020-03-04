#!/usr/bin/env bash

fg="$(xrdb -query | grep -w color2 | head -n1 | awk '{print $2}')"
light="$(xrdb -query | grep -w color7 | head -n1 | awk '{print $2}')"
danger="$(xrdb -query | grep -w color5 | head -n1 | awk '{print $2}')"

context=$(kubectl config current-context)
namespace=$(kubectl config view --minify --output 'jsonpath={..namespace}')

if [ "$context" == "eventtus-prod" ]
then
  fg=$danger
fi

if [ -z "$namespace" ]
then
	echo -ne "%{F$light}k8s %{F$fg}$context"
else
	echo -ne "%{F$light}k8s %{F$fg}$context/$namespace"
fi
