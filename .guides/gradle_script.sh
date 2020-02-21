#!/bin/bash

cd demo
./gradlew build
./gradlew jacocoTestReport
./gradlew run