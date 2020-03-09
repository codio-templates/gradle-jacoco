## Code Coverage with Gradle and JaCoCo

Code coverage is handled through a combination of Grade and JaCoCo. The EclEmma plug-in is based on JaCoCo. Gradle is bundled with the Java [stack](https://codio.com/docs/project/stacks/stack-overview/) in Codio. Gradle will handle the installation of JaCoCo. The button below will build, test with JaCoCo, and then run the student code. The link opens JaCoCo's test report. The script needs to run before the test results can be viewed. **Note**, the code in this example is the default code from the Gradle initialization process.

{gradle script}(bash .guides/gradle_script.sh)
[Show Test Coverage](open_preview demo/build/jacocoHtml/index.html)
{Check It!|assessment}(test-4235342038)
