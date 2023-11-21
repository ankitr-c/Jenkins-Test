pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                script {
                    dir("/var/lib/jenkins/workspace/multibranch_demo_main") {
                        // Change to the desired working directory

                        // Ensure correct ownership and permissions for the Jenkins workspace
                        sh "sudo chown -R jenkins:jenkins ."

                        // Check if the directory already exists
                        def repoDir = "Jenkins-Test"
                        if (fileExists(repoDir)) {
                            // If the directory exists, pull the latest changes
                            echo "Directory already exists. Pulling changes..."
                            dir(repoDir) {
                                sh "git pull origin main"
                            }
                        } else {
                            // If the directory doesn't exist, clone the repository
                            echo "Cloning repository for the first time..."
                            sh "git clone -b main --single-branch https://github.com/ankitr-c/Jenkins-Test.git ${repoDir}"
                        }

                        // Change to the cloned repository directory
                        dir(repoDir) {
                            // Ensure correct ownership and permissions for script.sh
                            sh "sudo chown jenkins:jenkins script.sh"
                            sh "chmod +x script.sh"

                            // Execute the script
                            sh "bash script.sh"
                        }
                    }
                }
            }
        }
    }
}
