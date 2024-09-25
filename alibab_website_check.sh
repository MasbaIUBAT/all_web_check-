#!/bin/bash

# List of websites
websites=(
    "https://aamar.tech"
    "https://aamartechllc.com"
    "https://bd.cems-dyechem.com"
    "https://bd-lighting.com"
    "https://br.cems-dyechem.com"
    "https://build-bangladesh.com"
    "https://cems-commercialautoshow.com"
    "https://cems-directory.com"
    "https://cems-lightingexpo.com"
    "https://cems-realestateexpo.com"
    "https://classiads.com"
    "https://e-registrations.com"
    "https://exhibitor-pass.com"
    "https://lk.cems-dyechem.com"
    "https://morocco-sourcingshow.com"
)

# Open each website in a private window
for website in "${websites[@]}"
do
    firefox --private-window "$website" &  # Open in private mode
done

