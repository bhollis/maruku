#!/bin/bash


ruby -I../lib ../bin/maruku *.md
ruby -I../lib ../bin/marutex *.md
