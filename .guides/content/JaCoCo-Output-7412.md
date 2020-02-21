## Gradle Bash Script

[Custom buttons](https://codio.com/docs/content/authoring/page-edit/buttons/) in Codio work with some of the Gradle wrapper scripts (`build` and `tasks` for example), but not with others (like `run` and `jacocoTestReport`). I had better luck wrapping these commands in a bash script. The script is called `gradle_script.sh`, and it is stored in the `.guides` folder. Replace `demo` with the folder created during the Gradle initialization step.

<details><summary>**Running the script for the first time**</summary>The build process of the script can take some time when the script is first run. It speeds up on subsequent runs.</details>

```bash
#!/bin/bash

cd project_name
./gradlew build
./gradlew jacocoTestReport
./gradlew run
```

You can break up these tasks into their own scripts if you prefer. Create separate bash scripts in `.guides`. The Gradle tasks that are required are `build` and `jacocoTestReport`. The `run` task will run the program, but that is not necessary for code coverage tests. The template for the scripts is:

```bash
#!/bin/bash

cd project_name
./gradlew gradle_task
```


Then create a button for each script in the Guide using this template:

```
{button name}(bash .gudes/script_name.sh)
```

## View Test Report

Running the test report script generates an HTML file with the path `project_name/build/jacocoHtml/index.html`. To view this output, use the markdown syntax below to create a link that will open the JaCoCo test report.

`[Show Test Coverage](open_preview project_name/build/jacocoHtml/index.html)`