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
                    sh "docker build . -t immo-docs:latest"
                    sh "docker run --name immoviewer-documentation immo-docs:latest --noChmod --noTimes"
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
			cleanWs(cleanWhenNotBuilt: false,
				deleteDirs: true,
				disableDeferredWipeout: true,
				notFailBuild: true,
				patterns: [[pattern: '.gitignore', type: 'INCLUDE'],
						    [pattern: '.propsfile', type: 'EXCLUDE']])
        }
    }
}