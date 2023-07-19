NAME=$1

FILE_PATH=infra/${NAME}-system.yaml

cp anthos/pds-template.yaml $FILE_PATH
yq --inplace ".metadata.name = \"${NAME}\"" $FILE_PATH

