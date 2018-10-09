# terraform_github_provider
Example of the use of terraform github provider


**Prerequisites:**

 * You need to have terraform installed
 * Export your Github token: 

 ```
 export TF_VAR_github_token=<your_github_token>
 ```
 
 * Export your GitHub Organization name: 

 ```
 export TF_VAR_github_ogranization=<your_github_organization>
 ```



## How to use this repository: 

1. Clone the repository: 

```
git clone https://github.com/firedot/terraform_github_provider.git
```
2. Go into the repo dir: 

```
cd terraform_github_provider
```
3. Run the following command: 

```
terraform init
```
4. Run the following command: 

```
terraform apply
```
5. When prompted, enter the GitHub username of the user which you want to add as a collaborator. 

6. When prompted, enter description for your GitHub repository. 

 This process will  create a repository with the name **repo1 **  and will provide admin permissions to the user whose username you provided. 
