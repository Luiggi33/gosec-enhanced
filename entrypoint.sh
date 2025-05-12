#!/bin/bash

gosec -quiet -fmt=json -stdout=true ./... | python process.py
