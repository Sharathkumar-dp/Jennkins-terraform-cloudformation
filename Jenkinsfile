pipeline {
  agent any
  environment {
        AWS_ACCESS_KEY_ID     = "AKIA5B6Q33TRB7VRFT57"
        AWS_SECRET_ACCESS_KEY = "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"
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
  }
}
