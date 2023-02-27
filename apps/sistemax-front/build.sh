#!/bin/bash

REGISTRY="robertotrevisan"
REPOSITORY="sistemax"

#if docker pull registry.hotmedia.com.br/infra/z1on:$1 > /dev/null; then
if docker manifest inspect $REGISTRY/$REPOSITORY:$1 > /dev/null; then
    echo "already exist TAG $1 -> do not push"
else
    echo "does not exist -> build and push..."
    # Build da imagem
    docker build -t $REGISTRY/$REPOSITORY .

    # Tag images
    docker tag $REGISTRY/$REPOSITORY $REGISTRY/$REPOSITORY:latest
    docker tag $REGISTRY/$REPOSITORY $REGISTRY/$REPOSITORY:$1

    # push da imagem
    docker push --all-tags $REGISTRY/$REPOSITORY
fi
