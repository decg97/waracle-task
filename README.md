# waracle-task
Waracle challenge outlined for first part of interview process

## Design choices

* Terraform: The decision behind picking terraform is that it is a widely used IaC setup and able to have resource from multiple cloud services long as the module is set out right and uses the correct provider

* Azure: Choice behind picking to build resources in azue is solely based on previous experience being azure based

* Github Actions: The choice to set up CI/CD pipline in Github Actions is cause of the integration with github repositories makes it more straght forward help for teams to use and have one local environment can work with.

## Explanation on code base

This section will go over the code setup.

1. **Workflow** Within the workflow repo the *deployment.yml* file is setup for use as workflow work best within .githubs folder.

The dployment file is broke up in different sections that deal with different task that will need to be done by the pipeline in order.

* `on` This section deals with when the pipeline will be triggered. So in our pipeline have it when a push is made to main the pipeline will trigger and start the deploy job outlined on line 16

* `inputs` The inputs section is where can define certain values that will need passed in for a further step to use in order to run. In this case this is how we are setting the value for the terraform directory

* `jobs` This is where we can define the jobs that the pipeline will follow. So in the case want multiple other jobs added in can define them here and since giving the deploy job its own name and what system need to run on can change those details for other jobs.

* `steps` These are the certain steps the job 'deploy' will follow in order to be able to plan and apply.

First case here is the setup in order to have a successful run by checking out the git code, setting up specific version of terraform and then initialising the terraform directory using th einit command.

Once the setup is done the plan and apply steps are run in that order so can see the plan for the terraform addition going to make in azure and what resource going to be building when first ran. After the plan has been successful the apply stage will run due to apply having the 'needs' value set so no apply is done without a successful plan.

The last step is a task just to simply echo out a message that the run has completed successfully. The only reason this step wouldn't run is if a previous one has failed.