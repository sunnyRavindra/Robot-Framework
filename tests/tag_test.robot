*** Test Cases ***
Test Case 1
    [Tags]    robot:continue-on-failure
    Log    This test case will continue on failure

Test Case 2
    [Tags]    robot:recursive-continue-on-failure
    Log    This test case will recursively continue on failure

Test Case 3
    [Tags]    robot:stop-on-failure
    Log    This test case will stop on failure

Test Case 4
    [Tags]    robot:recursive-stop-on-failure
    Log    This test case will recursively stop on failure

Test Case 5
    [Tags]    robot:skip-on-failure
    Log    This test case will be skipped if it fails

Test Case 6
    [Tags]    robot:skip
    Log    This test case will be unconditionally skipped

Test Case 7
    [Tags]    robot:exclude
    Log    This test case will be unconditionally excluded

*** Keywords ***
Private Keyword
    [Tags]    robot:private
    Log    This keyword is private

No Dry Run Keyword
    [Tags]    robot:no-dry-run
    Log    This keyword will not be executed in dry run mode

*** Test Cases ***
Test Case 8
    [Tags]    robot:exit
    Log    This test case will stop execution gracefully

Test Case 9
    [Tags]    robot:flatten
    Log    This test case will flatten the output