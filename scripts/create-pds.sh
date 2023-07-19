NAME=$1

FILE_PATH=gcpconfig/namespaces/${NAME}/namespace.yaml

cp anthos/pds-template.yaml $FILE_PATH
yq --inplace ".metadata.name = \"${NAME}\"" $FILE_PATH

