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
                    withCredentials([string(credentialsId: 'docker_auth', variable: 'docker-cred')]) {
                                          sh 'docker login -u vinnuvinod752 -p ${docker-cred}'
                    }
                }
            }
        }
    }
}