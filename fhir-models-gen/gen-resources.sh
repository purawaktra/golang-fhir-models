#!/usr/bin/env bash

wget -O definitions.zip https://www.hl7.org/fhir/definitions.json.zip
unzip definitions.zip profiles-types.json valuesets.json -d fhir-json
rm definitions.zip
wget -O fhir-json/bundle.json http://hl7.org/fhir/bundle.profile.json
wget -O fhir-json/codesystem.json http://hl7.org/fhir/codesystem.profile.json
wget -O fhir-json/structuredefinition.json http://hl7.org/fhir/structuredefinition.profile.json
wget -O fhir-json/valueset.json http://hl7.org/fhir/valueset.profile.json

go generate ./fhir-json
