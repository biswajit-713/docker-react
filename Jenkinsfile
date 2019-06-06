pipeline {
    agent any

    stages {
        stage('build image for dev') {
            steps {
                echo "build image for dev"
                cleanWS()
            }
        }
        stage('unit test') {
            steps {
                echo "unit test"
            }
        }
        stage('build prod image') {
            steps {
                echo "build prod image"
            }
        }    
        stage('deploy in SIT') {
            steps {
                echo "deploy in SIT"
            }
        }
        stage('run UI tests') {
            steps {
                echo "run UI tests"
            }
        }
        stage('tag image and push') {
            steps {
                echo "tag image and push"
            }
        }
    }
}