set -e

DOCKER_TAG=bb_lineup_planner:latest
WORKING_DIR=/bb_lineup_planner
ENTRYPOINT="bash"

docker build \
    .. \
    -f Dockerfile \
    -t $DOCKER_TAG

docker run \
    -it \
    --rm \
    --entrypoint bash \
    -v $(pwd)/..:$WORKING_DIR \
    -w $WORKING_DIR \
    bb_lineup_planner:latest
