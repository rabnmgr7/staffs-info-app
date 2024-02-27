pipeline {
    agent any
    environment {
        scannerHome = tool 'sonar5.0'
    }
    stages {
        stage('Sonar Analysis') {
            steps {
                withSonarQubeEnv('sonar') {
                    sh """${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=staffs-info \
                        -Dsonar.projectName=staffs-info \
                        -Dsonar.projectVersion=1.0.0 \
                        -Dsonar.sources=. \
                        -Dsonar.exclusions='./node/api/node_modules/**' \
                        -Dsonar.language=dockerfile \
                        -Dsonar.sourceEncoding=UTF-8 \
                        -Dsonar.inclusions='**/Dockerfile'
                    """
                }
            }
        }
    }
}
