pipeline {
	agent any

	stages {
		stage ('Check server health') {
			steps {
				sh 'curl -k -i -w '%{http_code}' -X GET https://10.0.128.2/health'
			}
		}
		stage ('Create Host') {
			steps {
				sh 'chmod +x create_host.sh && ./create_host.sh'
			}
		}
	}
}
