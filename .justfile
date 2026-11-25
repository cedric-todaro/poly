set shell := ["bash", "-uc"]

default: mk

# Commit and push (usage: just push "commit msg")
push MESSAGE:
    @git add .
    @git commit -m "{{MESSAGE}}"
    @git push

# `make` in all subdirs
mk:
    @find . -mindepth 2 -name "Makefile" -exec dirname {} \; | while read -r dir; do \
        make -s -k -C "$dir"; \
    done
