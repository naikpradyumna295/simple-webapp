pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Deploy to EC2') {
      steps {
        withAWS(credentials: 'aws-credentials', region: 'ap-southeast-1') {
          sh '''
            aws deploy create-deployment \
              --application-name MyWebApp \
              --deployment-group-name MY-DEPLOYMRNT-GROUP \
              --github-location repository=https://github.com/naikpradyumna295/simple-webapp.git \
              --commit-id=${GIT_COMMIT}
          '''
        }
      }
    }
  }
}
