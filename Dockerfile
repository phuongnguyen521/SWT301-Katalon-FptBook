FROM katalonstudio/katalon

COPY . /tmp/project

ENTRYPOINT ["docker run -t -v "$(pwd)":/tmp/project katalonstudio/katalon katalonc.sh -projectPath=/tmp/project/ -browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/FptBook_TestSuite" -apiKey=ba490008-3999-4890-848b-b43048e5ca92"]