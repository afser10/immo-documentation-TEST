    pipeline {
    agent any
    stages {
        stage('Clean workspace and Checkout Code') {
            steps {
                cleanWs()
                checkout scm
            }
        }
        stage('Build-Hugo') {
            steps {
                script{
                    sh "docker rm -f immoviewer-documentation || true"
                    sh "docker build . -t immo-docs:latest"
                    sh "docker run --name immoviewer-documentation immo-docs:latest --noChmod --noTimes"
                }
            }
        }
        stage('Copy Files from Docker Container') {
            steps{
                script {
                    sh "docker cp immoviewer-documentation:/home/jenkins/web-app/public ./public"
                } 
            }
        }
        stage('Cleanup Docker Container') {
            steps {
                script {
                    sh "docker rm -f immoviewer-documentation"
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh "aws s3 sync ./public s3://docs-immoviewer --delete --acl public-read"
                }
            }
        }
    }
    post {
        always {
            cleanWs(cleanWhenNotBuilt: false,
                deleteDirs: true,
                disableDeferredWipeout: true,
                notFailBuild: true,
                patterns: [[pattern: '.gitignore', type: 'INCLUDE'],
                            [pattern: '.propsfile', type: 'EXCLUDE']])
        }
        success {
            slackSend (
                color: '#00FF00', 
                message: "SUCCESS: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (<${env.BUILD_URL}|open>)", 
                iconEmoji: ":white_check_mark:"
            )
        }
        failure {
            slackSend (
                color: '#FF0000', 
                message: "FAILURE: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (<${env.BUILD_URL}|open>)", 
                iconEmoji: ":x:"
            )

        }
    }
}