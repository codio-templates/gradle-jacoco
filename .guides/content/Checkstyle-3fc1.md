## Using Checkstyle on Student Code

{Check It!|assessment}(test-1416817129)


## Setting Up Checkstyle

Checkstyle is integrated into Codio. Follow the steps below to add Checkstyle to the Guide.

### Step 1
Click on the chess piece, and add an Advanced Code Test to your Guide page.
![.guides/img/advanced-code-test](.guides/img/advanced-code-test.png)

### Step 2
Next, give the code test a title (will appear on screen) and some instructions.
![.guides/img/creating-advanced-code-test](.guides/img/creating-advanced-code-test.png)

### Step 3
Click on `EXECUTION` on the left. Tell the code test to use `Java` and `Checkstyle` as the language and assessment subtype. To use the default config file for Checkstyle, leave `CONFIG PATH` empty. Finally, enter the path to the student file in the `ADD CASE` field.
![.guides/img/default-checkstyle](.guides/img/default-checkstyle.png)

### Step 4
If you want to use your own config file for Checkstyle, be sure that it is uploaded to Codio (putting it in the `.guides` folder is the best place to put it.) Type the path to the new config file into the filed labeled `CONFIG PATH`.
![.guides/img/custom-checkstyle](.guides/img/custom-checkstyle.png)