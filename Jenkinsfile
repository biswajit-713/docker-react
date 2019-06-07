node {

    def commitId

    stage('checkout') {
        checkout scm
        sh "git describe --always > .git/commit_id"
        commitId = readfile('./git/commit_id').trim()
        echo "The commit id is ${commitId}"
    }
    stage('dev build') {
        
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
    stage('tag image') {
        
    }
}