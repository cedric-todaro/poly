set shell := ["bash", "-uc"]

default:
    @just --list

# Commit and push (usage: just push "commit msg")
push MESSAGE:
    @git add .
    @git commit -m "{{MESSAGE}}"
    @git push

# `make` in all subdirs
mk:
    @find . -mindepth 2 -name "Makefile" -exec dirname {} \; | while read -r dir; do \
        make -C "$dir"; \
    done
