pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                script {
                    dir("/home/ankitraut0987") {
                        // Change to the desired working directory
                        sh "git checkout test"
                        sh "git clone https://github.com/ankitr-c/Jenkins-Test.git"
                        sh "chown jenkins:jenkins /home/ankitraut0987/Jenkins-Test/script.sh"
                        sh "chmod +x /home/ankitraut0987/Jenkins-Test/script.sh"
                        sh "bash /home/ankitraut0987/Jenkins-Test/script.sh"
                    }
                }
            }
        }
    }
}
