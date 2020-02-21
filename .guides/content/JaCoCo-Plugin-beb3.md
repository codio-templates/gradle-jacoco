## Adding the JaCoCo Plugin

Gradle has good [documentation](https://docs.gradle.org/current/userguide/jacoco_plugin.html) on how to add, configure, and use the JaCoCo plugin. 

### 1) Add the Plugin
   * In the file tree, open the folder created by the Gradle initialization process
   * Open the `build.gradle` file
   * Add the JaCoCo to the list of plugins
```groovy
plugins {
    id 'jacoco'
}
```
### 2) Configure the Plugin
   * Remain in the `build.gradle` file
   * Add the JaCoCo configuration settings
```groovy
jacoco {
    toolVersion = "0.8.5"
    reportsDir = file("$buildDir/customJacocoReportDir")
}
```
### 3) JaCoCo Report
   * Remain in the `build.gradle` file
   * Add the configuration settings for the JaCoCo test (this should go right after the plugin settings from above)
```groovy
jacocoTestReport {
    reports {
        xml.enabled false
        csv.enabled false
        html.destination file("${buildDir}/jacocoHtml")
    }
}
```
### 4) Going Further
   * The Gradle docs have more information on [code coverage metrics](https://docs.gradle.org/current/userguide/jacoco_plugin.html#sec:jacoco_report_violation_rules) and [task configuration](https://docs.gradle.org/current/userguide/jacoco_plugin.html#sec:jacoco_specific_task_configuration)