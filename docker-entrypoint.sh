#!/bin/bash
set -e
/opt/install4j6/bin/install4jc --license=$INSTALL4J_LICENSE
exec "$@"
