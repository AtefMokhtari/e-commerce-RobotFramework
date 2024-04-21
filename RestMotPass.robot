*** Settings ***
Resource    keyword.robot
Resource    variable.robot

*** Test Cases **
Reset Mot Pass
            Open URL    ${U}
            ResetMotPass