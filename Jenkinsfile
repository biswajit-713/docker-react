node {

    def commitId
    def app

    stage('checkout') {
        checkout scm
        sh "git describe --always > .git/commit_id"
        commitId = readFile('./.git/commit_id').trim()
        echo "the commit id is ${commitId}"
    }
    stage('build image') {
        echo "the commit id is ${commitId}"
        app = docker.build("biswajit713/docker-react-dev:${commmitId}", "-f Dockerfile.dev .")
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