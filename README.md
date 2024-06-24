# DevOps Take-Home Challenge
## Nice to know
You can deploy this app directly to your AWS account

<br>Install docker with docker-compose on **your local machine** from [here](https://docs.docker.com/get-docker/)
<br>For Pipelines to work I Have saved some secrets to the repository level
<br>**GIT_PAT**  - personal access token to be able to clone outside terraform module
<br>**HUB_PASS** - personal access token to login on dockerhub
<br>
<br>_All pipelines are running inside a temporary container based on an **Dockerfile-base** that has installed all the necessary dependencies_

## Documentation

1.**Run locally:** 
- on root folder run below command and open **http://localhost:4200/** in your browser: 
```shell
docker compose up -d --build
```

2.**Deploy infra:**
- run First Deploy pipeline from [here](https://github.com/lynws/devops-challenge/actions/workflows/manual-deploy.yml) (is required an aws iam user credentials)
<br> to view instance id check step "List EC2 ID And Public IP" from the above pipeline  

3.**Deploy App:** 
- the deployment will be made after each commit on main and Continuous Build pipeline will run successfully. 
<br>Additionally you can run it manually from [here](https://github.com/lynws/devops-challenge/actions/workflows/continuous-deploy.yml)


## Future Improvements
    - create a sparate module for security group
    - implement a multienv setup
    - integrate workflows for releases with versioning