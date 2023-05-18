pipeline {
    agent {
        label "agent-1"
    }
    stages {
        stage('Pull') {
            steps {
                script {
                    git url: 'git@github.com:danielclipnow/immoviewer-documentation.git',
                    branch: 'main',
                    credentialsId: '78d56cd0-ba70-412a-882b-5db899071600'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh "aws s3 sync ./public s3://docs-immoviewer/immo/ --delete --acl public-read"
                }
            }
        }
    }
}
