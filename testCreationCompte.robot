*** Settings ***
Resource    keyword.robot
Resource    variable.robot

*** Test Cases **
Create an account 
     [ Tags]    compte
     Open URL    ${U}
     Create an account  ${fname}     ${lname}     ${e}      ${pwd}    ${t}      




       

    

    
  

