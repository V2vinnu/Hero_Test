pipeline{
    any agent
    stages{
        stage('docker build'){
            steps{
                script{
                    sh 'docker build -t $JOB_NAME:V1$BUILD_ID'

                }
            }
        }
    }
}