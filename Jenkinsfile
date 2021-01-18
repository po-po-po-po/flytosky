pipeline {
  agent {
    node {
      label 'master'
    }
  }

  environment {
    PROJECT_NAME='ptcs-flytosky'
    PROJECT_PORT='8888'
    REPLICAS='1'
    DOCKER_HOST = sh (returnStdout: true, script: 'echo $DOCKER_HOST').trim()
    DOCKER_IMAGE_URL = sh (returnStdout: true, script: 'echo $DOCKER_IMAGE_URL').trim()
    K8S_HOST = sh (returnStdout: true, script: 'echo $K8S_BUILD').trim()
    DATE = sh (returnStdout: true, script: 'date +%y%m%d%H%M%S').trim()
    SHORT = sh (returnStdout: true, script: "echo ${GIT_COMMIT}|cut -c 1-8").trim()
    GIT_BRANCH_SUB = sh (returnStdout: true, script: "echo ${GIT_BRANCH}|cut -c 8-28").trim()
    GIT_COMMIT_MSG = sh(returnStdout: true, script: "git log --pretty=format:'%s' ${GIT_COMMIT} -1").trim()
    GIT_COMMIT_USER = sh(returnStdout: true, script: "git log --pretty=format:'%an' ${GIT_COMMIT} -1").trim()
    NAMESPACE= "${GIT_BRANCH_SUB}"
    IMAGE_TAG = "${GIT_BRANCH_SUB}_${DATE}_${SHORT}"
  }

   stages {

      stage('Build and Push Image'){
      	steps {
      	  sh "date"
          sh "mvn clean package -DskipTests -P ${NAMESPACE}"
          sh "export JAR_FILE=${PROJECT_NAME} && docker login ${DOCKER_IMAGE_URL}"
	      sh "docker build --build-arg JAR_FILE=${PROJECT_NAME} -t ${PROJECT_NAME} ."
	      sh "docker tag ${PROJECT_NAME} ${DOCKER_IMAGE_URL}/${PROJECT_NAME}:${IMAGE_TAG}"
	      sh "docker push ${DOCKER_IMAGE_URL}/${PROJECT_NAME}:${IMAGE_TAG}"
	      sh "docker tag ${PROJECT_NAME} ${DOCKER_IMAGE_URL}/${PROJECT_NAME}:${GIT_BRANCH_SUB}_latest"
	      sh "docker push ${DOCKER_IMAGE_URL}/${PROJECT_NAME}:${GIT_BRANCH_SUB}_latest"
        }
      }
      stage('Deploy framework to K8S'){
      	steps {
      	  sh "sed -i 's/DOCKER-IMAGE-URL/${DOCKER_IMAGE_URL}/g'  k8s-deploy.yaml"
      	  sh "sed -i 's/PROJECT-NAME/${PROJECT_NAME}/g' k8s-deploy.yaml"
      	  sh "sed -i 's/PORT/${PROJECT_PORT}/g'  k8s-deploy.yaml"
      	  sh "sed -i 's/REPLICAS/${REPLICAS}/g'  k8s-deploy.yaml"
      	  sh "sed -i 's/NAMESPACE/${NAMESPACE}/g'  k8s-deploy.yaml"
     	  sh "scp k8s-deploy.yaml ${K8S_HOST}:/home/k8s/${PROJECT_NAME}.yaml"
          sh "ssh ${K8S_HOST} 'cd /home/k8s ; kubectl apply -f ${PROJECT_NAME}.yaml ; kubectl set image -n ${NAMESPACE} deployment/${PROJECT_NAME} ${PROJECT_NAME}=${DOCKER_IMAGE_URL}/${PROJECT_NAME}:${IMAGE_TAG}'"
        }
      }
   }
}