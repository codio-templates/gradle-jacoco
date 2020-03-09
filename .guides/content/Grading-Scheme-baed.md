## Grading Scheme

Below is an overview of how grading student work could be done with JaCoCo and other code tests.

### Partial Points

Codio allows for [partial points](https://codio.com/docs/content/authoring/assessments/assessments-code-tests/#partial-score) when grading student work with an advanced code test. On the `EXECUTION` page of the advanced code test, click the toggle to allow for partial points.

![Allow Partial Points](.guides/img/allow-partial-points.png)

You will also want to enter the path to your script that will evaluate student work.

![Custom Grading Script](.guides/img/custom-script.png)

On the `GRADING` page of the advanced code test, enter how many points the question is worth.

![Points](.guides/img/points.png)

### Calculating Student Grade

The steps below are one possible way a grade for student work can be calculated.

  * Have the students run the code coverage tests on their work. JaCoCo will generate reports in the `build` directory.
  * Generate a CSV or XML version of the report so you can reference the results. The `build.gradle` file has a report configuration section. If CSV files are enabled, they will appear in `build/customJacocoReportDir/test/jacocoTestReport.csv`.
  
  ```json
  jacocoTestReport {
    reports {
        xml.enabled false
        csv.enabled true
        html.destination file("${buildDir}/jacocoHtml")
    }
  ```
  
  * Parse the above file and extract any meaningful data needed for grade calculation.
  * Call any other tests you want to run on the student code.
  * The student grade should be stored in a variable called `points` and this variable should be passed back to Codio following these [instructions](https://codio.com/docs/content/authoring/assessments/assessments-code-tests/#partial-score).
  