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
    post {
        always {
            script {
                if (getContext(hudson.FilePath)) {
                    deleteDir()
                }
            }
            dir("${env.WORKSPACE}@tmp") {
               deleteDir()
            }
            dir("${env.WORKSPACE}@script") {
                deleteDir()
            }
            dir("${env.WORKSPACE}@script@tmp") {
                deleteDir()
            }
        }
        success {
            slackSend (color: '#00FF00', message: "SUCCESS: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        }
        failure {
            slackSend (color: '#FF0000', message: "FAILURE: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        }
    }
}
