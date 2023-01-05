pipeline {
 agent any
    stages{
        stage('docker build'){
            steps{
                script{
                    sh 'docker image build -t $JOB_NAME:V1$BUILD_ID .'

                }
            }
        }
    }
}