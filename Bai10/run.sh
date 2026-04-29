#!/bin/bash

echo "==============================="
echo " Shipping App CI Local Runner "
echo "==============================="

echo ""
echo "Cleaning old build..."
mvn clean

echo ""
echo "Running tests..."
mvn test

if [ $? -ne 0 ]; then
    echo ""
    echo "Tests failed!"
    exit 1
fi

echo ""
echo "Packaging application..."
mvn package

if [ $? -ne 0 ]; then
    echo ""
    echo "Build failed!"
    exit 1
fi

echo ""
echo "Build success!"