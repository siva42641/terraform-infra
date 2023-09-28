pipeline {
  agent any
  
  environemnt {
     TF_VAR_VARAIBLE_NAME="value"
	 }
	 
	stages {
	   stage ('checkout'){
	      steps {
		      git 'https://github.com/siva42641/terraform-infra.git'
			  }
			  
			}
		stage ('terraform init'){
		   steps {
		      sh 'terraform init'
			  }
			 }
		stage ('terraform plan'){
		   steps {
		     sh 'terraform plan'
			 }
			 
			}
		stage ('terraform apply'){
		    when {
			   branch 'master'
			   }
		   steps {
                sh 'terraform apply --auto-approve'
				}
				}
				}
				}
