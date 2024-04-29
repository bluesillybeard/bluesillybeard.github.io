#!/bin/bash

# This compiles the site for local testing. DO NOT COMMIT after running this file! Make sure to run build.sh before commiting.

./compile.sh -DHOSTSITE="$(realpath ./)/docs"