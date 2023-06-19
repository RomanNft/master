pipeline {
    agent {
        // Specify the agent where the pipeline should run
        label 'agent-label'
    }

    options {
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
        timestamps()
    }

    stages {
        stage("Git clone") {
            steps {
                sh '''
                cd /home
                git clone https://github.com/RomanNft/master
                '''
            }
        }

        stage("Set permissions") {
            steps {
                sh "chmod 777 /home/master"
            }
        }

        stage("Work") {
            steps {
                dir("/home/master") {
                    sh "docker-compose up -d"
                }
            }
        }
    }
}
