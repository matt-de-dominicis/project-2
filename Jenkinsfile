pipeline {
    agent any
    stages {
       stage("Matthew - Build Docker Image"){
           steps {
               script {
                   sh 'docker build -t matthew-python-script .'
               }
           }
        }
        stage("Matthew - Login to Dockerhub"){
           steps {
               script {
                    withCredentials([string(credentialsId: 'dockerpwd', variable: 'dockerpwd')]) {
                        sh 'docker login -u mattdd05 -p ${dockerpwd}'
                    }
               }
           }
        }
        stage("Matthew - Push Image to Dockerhub"){
           steps {
               script {
                   sh 'docker tag matthew-python-script mattdd05/matthew-python-script'
                   sh 'docker push mattdd05/matthew-python-script'
               }               
           }
        }
    }
}