## coolify deploy from google artifact registory
### step1
Create service account and download service account key json file.
Then put the json file into onto this project folder and rename it to CRED-FILE-NAME.
refer to 
[link](https://medium.com/@sbkapelner/building-and-pushing-to-artifact-registry-with-github-actions-7027b3e443c1)

### step2
substitute variables on Dockerfile and Makefile for your configuration.
Execute
`make deploy`
on this project.

### step3
Install gcloud-cli and configure authentication setting on the machine where coolify is installed

### step4 
Edit /data/coolify/source/.env and add a line
`HELPER_IMAGE=REGION.pkg.dev/PROJECT-ID/path/to/registory:tag`
(where customized helper image pushed)
on the machine where coolify is installed.

### step5
Re-install coolify

### step6
Deploy your app on coolify
