pipeline {
    agent any

    stages {
        stage('checkout code') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'UserIdentity', email: 'jenkins@biswajit,com', name: 'jenkins'], [$class: 'CleanBeforeCheckout']], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/biswajit-713/docker-react.git']]])
                cleanWs()
            }
        }
        stage('build image for dev') {
            steps {
                echo "build image for dev"
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
            stages {
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