 pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the Git repository
                checkout([$class: 'GitSCM',
                    userRemoteConfigs: [[url: 'https://github.com/naikpradyumna295/simple-webapp.git', credentialsId: 'github-credentials']],
                    branches: [[name: '*/master']],
                    doGenerateSubmoduleConfigurations: false,
                    extensions: []
                ])
            }
        }
        
        stage('Deploy to EC2') {
            steps {
                // Deploy the application to EC2 using AWS CodeDeploy
                withAWS(credentials: 'aws-credentials', region: 'ap-southeast-1') {
                    sh 'aws deploy create-deployment --application-name MyWebApp --deployment-group-name MY-DEPLOYMRNT-GROUP --github-location repository=https://github.com/naikpradyumna295/simple-webapp.git,commitId=${GIT_COMMIT}'
                }
            }
        }
    }
}


