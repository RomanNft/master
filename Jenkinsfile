properties([disableConcurrentBuilds()])

pipeline {
    agent {
        label ''
    }
    options {
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
        timestamps()
    }
    
    stages {
        stage("Git clone") {
            steps {
                dir("roman") {
                    sh "git clone https://github.com/RomanNft/master"
                }
            }
        }

        stage("Work") {
            environment {
                DOCKER_COMPOSE_VERSION = '1.29.2'
            }
            steps {
                script {
                    docker.withRegistry('') {
                        docker.image('docker/compose').pull(DOCKER_COMPOSE_VERSION)
                        docker.image('docker/compose').inside("-v /var/run/docker.sock:/var/run/docker.sock") {
                            sh "cd roman/master && docker-compose up -d"
                        }
                    }
                }
            }
        }
    }
}
