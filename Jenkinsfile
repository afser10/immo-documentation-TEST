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
        stage('Build-Hugo') {
            steps {
                script{
                    sh "docker build . -t immo-docs:latest"
                    sh "docker run --name immo-docs --user 1001:1001 immo-docs:latest --noChmod --noTimes"
                    sh "docker cp immo-docs:/home/jenkins/web-app/public ./public"
                    sh "docker container rm -f immo-docs"
                    sh "docker image rm immo-docs:latest"
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
