pipeline {
 agent any
    stages{
        stage('docker build'){
            steps{
                script{
                    sh 'docker image build -t $JOB_NAME:V1.$BUILD_ID .'
                    sh 'docker image tag $JOB_NAME:V1.$BUILD_ID vinnuvinod752/$JOB_NAME:V1.$BUILD_ID'

                }
            }
        }
        stage('push image to docker hub'){
            steps{
                script{
                    withCredentials([usernameColonPassword(credentialsId: 'Docker--login', variable: 'docker-login')]) {
    
                    }
                }
            }
        }
    }
}