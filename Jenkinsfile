node {

    def commitId
    def app

    stage('checkout') {
        checkout scm
        sh "git describe --always > .git/commit_id"
        commitId = readFile('./.git/commit_id').trim()
    }
    stage('build image') {
        app = docker.build("biswajit713/docker-react-dev:${commmidId}", "-f Dockerfile.dev .")
    }
    stage('run unit test') {
        
    }
    stage('uat build') {
        
    }
    stage('push to registry') {
        
    }
    stage('deploy') {
        
    }
    stage('run UI test') {
        
    }
    stage('tag image & push to registry') {
        
    }
}