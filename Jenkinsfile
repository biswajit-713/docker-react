node {

    def commitId
    def app
    def image

    stage('checkout') {
        checkout scm
        sh "git describe --always > .git/commit_id"
        commitId = readFile('./.git/commit_id').trim()
    }
    stage('build image') {
        app = docker.build("biswajit713/docker-react-dev:${commitId}", "-f Dockerfile.dev .")
    }
    stage('run unit test') {
        app.inside {
            sh "npm run test"
        }
    }
    stage('uat build') {
        app = docker.build("biswajit713/docker-react:${commitId}")
    }
    stage('push to registry') {
        docker.withRegistry("https://registry.hub.docker.com", "dockethub") {
            app.push("${commitId}")
            app.push("latest")
        }
    }
    stage('deploy') {
        docker.withRegistry("https://registry.hub.docker.com", "dockethub") {
            image = docker.image("biswajit713/docker-react:latest")
            image.run("-p 3000:3000")
        }
    }
    stage('run UI test') {
        image.inside {
            sh "test passed"
        }
    }
    stage('tag image & push to registry') {
        docker.withRegistry("https://registry.hub.docker.com", "dockethub") {
            app.push("biswajit713/docker-react:gold")
        }        
    }
}