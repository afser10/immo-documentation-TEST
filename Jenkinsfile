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
                    try {
                        sh "docker run --name immoviewer-documentation immo-docs:latest --noChmod --noTimes"
                    } catch (Exception e) {
                        echo 'Exception occurred: ' + e.toString()
                        sh 'Handle the exception!'
                    }
                    sh "docker cp immoviewer-documentation:/home/jenkins/web-app/public ./public"
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
                sh """if [ \$(docker ps -aq --filter=ancestor=immo-docs:latest | wc -l) -ne 0 ]
                    then
                        docker container rm -f \$(docker ps -aq --filter=ancestor=immo-docs:latest);
                    else
                        echo 'Image has not any containers"'
                    fi"""
                sh "docker rmi --force immo-docs:latest"
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