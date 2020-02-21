## Setting Up Gradle

As Gradle is a part of the Java stack, there is nothing to install. Gradle has an excellent [guide](https://guides.gradle.org/building-java-applications/) on building a Java program.

### 1) Open the terminal
   * Click on `Tools -> Terminal` in the menu bar above
   * Or, click on the computer monitor icon in the file tree on the left
![Terminal Icon](.guides/img/terminal-icon.png)
### 2) Make a directory for the project
```bash
$ mkdir name_of_project
$ cd name_of_project
```
### 3) Initialize the project
   * From the terminal, type `$ gradle init`
   * Select the type of project you want to make - basic, application, library, or Gradle plugin
   * Select the programming language - C++, Groovy, Java, Kotlin, or Swift
   * Select the testing framework - JUnit, TestNG, Spock, or JUnit Jupiter
   * Name the project
   * Name the source package
### 4) Add the student file to the Guide
   * Verify that the Guide has a [layout](https://codio.com/docs/content/authoring/settings-actions/page/) with three panels and no tree. One panel will be for the guide, one for the Java code, and the third will be for the Java test.
   ![Three Panel Layout](.guides/img/3panel.png)
   * The initialization process creates a Java file in `project_name/src/main/java/source_name/App.java` and a unit test in `project_name/src/test/java/source_name/AppTest.java`.
   * [Open a tab](https://codio.com/docs/content/authoring/settings-actions/open-tabs/) (see the section entitled "Opening Files") and add the file path for the Java file and Java test (from the previous step) to the "Filename" box
   ![Open Tabs](.guides/img/java_files2.png)