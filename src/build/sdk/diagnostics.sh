#!/bin/bash

set -o errexit -o nounset

cd /dotnet/src/sdk/diagnostics && ./build.sh --architecture x64

cp -r /dotnet/src/sdk/diagnostics/artifacts/bin/Linux.x64.Debug /dotnet/dist/sos
