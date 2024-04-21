*** Settings ***
Resource    keyword.robot
Resource    variable.robot

*** Test Cases **
 
Achat
     [ Tags]    Achat
     Open URL    ${U}
     Achat     ${Achat}         ${fname}     ${lname}     ${C}    ${A}    ${city}    ${P}    ${country}    ${Z} 

AchatA
     [ Tags]      Select
     Open URL    ${U}
     AchatA        ${S}