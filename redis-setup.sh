#!/usr/bin/env zsh

if ! [ -d $HOME/redis ]; then
  `git clone -b unstable https://github.com/antirez/redis.git $HOME/redis`
else
  echo "redis already present. skipping clone"
fi

if ! [ -d $HOME/redis-rb ]; then
  $(git clone git@github.com:ardsrk/redis-rb.git $HOME/redis-rb)
else
  echo "redis-rb already present. skipping clone"
fi

if ! [ -d $HOME/redis-learning ]; then
  $(git clone git@github.com:ardsrk/redis-learning.git $HOME/redis-learning)
else
  echo "redis-learning already present. skipping clone"
fi
