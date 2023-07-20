NAME=$1

FILE_PATH=gcpconfig/namespaces/${NAME}/namespace.yaml

cd gcpconfig/namespaces
mkdir ${NAME}
cd ..
cd ..
cp anthos/pds-template.yaml $FILE_PATH
yq --inplace ".metadata.name = \"${NAME}\"" $FILE_PATH

FILE_PATH=gcpconfig/namespaces/${NAME}/deployment.yaml

cp anthos/pds-deploy-template.yaml $FILE_PATH
yq --inplace ".metadata.name = \"${NAME}\"" $FILE_PATH
yq --inplace ".metadata.labels.app = \"${NAME}\"" $FILE_PATH
yq --inplace ".spec.selector.matchLabels.app = \"${NAME}\"" $FILE_PATH


