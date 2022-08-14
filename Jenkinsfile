pipeline {
    agent any
    environment {
        dockerhub = ('dockerhub')
        AWS_CREDS = credentials('wsjung0516-aws-creds')
        AWS_DEFAULT_REGION='us-east-1'
    }
    stages {
        stage('Hello') {
            steps {
                sh '''
                    docker compose version
                '''
            }
        }
        stage('Login') {
            steps {
                sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
            }
        }
        stage('Build') {
            steps {
                sh 'docker context use default'
                sh 'docker compose build'
                sh 'docker compose push'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker context use myecscontext' 
                sh 'docker compose up'
                sh 'docker compose ps --format json'
            }
        }
    }
}
