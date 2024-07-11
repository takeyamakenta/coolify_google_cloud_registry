## coolify deploy from google artifact registory
### step1
create service account and download service account key json file
put the json file into onto this project folder and rename it to CRED-FILE-NAME
refer to 
[link](https://medium.com/@sbkapelner/building-and-pushing-to-artifact-registry-with-github-actions-7027b3e443c1)

### step2
substitute variables on Dockerfile and Makefile for your configuration.
on this folder execute
`make deploy`

### step3
on the machine where coolify is installed, install gcloud-cli and configure authentication setting.

### step4 
on the machine where coolify is installed, edit /data/coolify/source/.env and add 
HELPER_IMAGE=REGION.pkg.dev/PROJECT-ID/path/to/registory:tag
(where customized helper image pushed)

### step5
re-install coolify

### step6
deploy on coolify
