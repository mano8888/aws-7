pipeline{
agentany

stages{
stage('scm checkout'){
steps{
sh "git clone https://github.com/mano8888/aws-7.git"
}
}

stage('build'){
steps{
sh "mvn build -f aws-7"
}
}

stage('test'){
steps{
sh "mvn test -f aws-7"
}
}

stage('mvn deploy'){
steps{
sh "mvn package -f aws-7"
}
}
}
}
