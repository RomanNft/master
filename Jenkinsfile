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
                dir("/home/roman/") {
                    git url: 'https://github.com/RomanNft/master.git'
                }
            }
        }

        stage("Work") {
            steps {
                dir("/home/roman/master") {
                    sh "docker-compose up -d"
                }
            }
        }
    }
}
