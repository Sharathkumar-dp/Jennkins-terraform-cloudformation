pipeline {
  agent any
  environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRETE_ACCESS_KEY')
  }

  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init"
      }
    }
    stage('Terraform Plan') {
      steps {
        sh "terraform plan"
      }
    }
    stage('Terraform Apply') {
      steps {
        sh "terraform apply --auto-approve"
      }
    }
    stage('Terraform Destroy') {
      steps {
      input "Destroy resourcess"
        sh "terraform destroy --auto-approve"
      }
    }

  }
}
