#! /bin/bash


function killport() {
  sudo lsof -i -P | grep LISTEN | grep $1 | awk '{print $2}' | xargs kill
}

