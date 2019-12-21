#!/usr/bin/env bash

ls cool.william.frontend || wget https://plugins.gradle.org/plugin/cool.william.frontend

LATEST_VERSION="$(sed -nE 's/.*Version (0.0.[0-9]+) \(latest\).*/\1/p' cool.william.frontend)"

echo "frontendVersion=$LATEST_VERSION" > "gradle.properties"
