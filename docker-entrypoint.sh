#!/bin/bash
set -e
/opt/install4j/bin/install4jc --license=$INSTALL4J_LICENSE
exec "$@"
