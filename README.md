# profilence-test
robotframework-seleniumlibrary automatic tests

## How to run it

install python (and pip)
```
pip install robotframework
pip install robotframework-seleniumlibrary
```
There's browser tests for Firefox/Chrome/Edge so make sure to update them first. Firefox is the default browser used in the tests, thus required.

To run the project, go to the project directory and run:
```
robot .
```
This will run all the tests in the directory.

# Failed tests

contact_us.robot tests fail, because it can't find html ids. The Id:s are dynamic and/or obfuscated (i think?) 

example html id:
```
email-86ce5875-6792-4ff9-b92b-4a05c970cb56
```
