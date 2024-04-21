*** Settings *** 
Library    SeleniumLibrary

*** Keywords ***
Open URL
     [Arguments]    ${URL}
     Open Browser     ${URL}    chrome
     Maximize Browser Window
     Wait Until Page Contains    This is a dummy website for Web Automation Testing

Create an account 
      [Arguments]    ${fname}     ${lname}     ${e}      ${pwd}    ${t}    
      Input Text      css=input[placeholder="First Name"]         ${fname}
      Input Text      css=input[placeholder="Last Name"]          ${lname}
      Input Text      css=input[placeholder="E-Mail"]          ${e}
      Input Text      css=input[placeholder="Telephone"]    ${t}
      Input Password     css=input[name="password"]         ${pwd}  
      Input Password     css=input[name="confirm"]       ${pwd} 
      Click Element   css=div[class="custom-control custom-checkbox custom-control-inline"]   
      Click Button   css=input[type="submit"]

    
ResetMotPass
             [Arguments]         ${e}
           Go To       https://ecommerce-playground.lambdatest.io/index.php?route=account/forgotten
           Page Should Contain   Forgot Your Password?
           Input Text    css=input[name="email"]       atef@test.com
           Click Button   //button[normalize-space()='Continue']
           Page Should Contain      An email with a confirmation link has been sent your email address.

Ajout Produit
       Input Text       css=input[name="search"]     HTC Touch HD
       Click Button        //button[normalize-space()='Search']
       Go To                https://ecommerce-playground.lambdatest.io/index.php?route=product/product&product_id=28&search=htc
       Click Button     //div[@id='entry_216842']//button[@title='Add to Cart'][normalize-space()='Add to Cart'] 
       wait  15000
       Click Element     //div[@id='entry_217825']//div[@class='icon svg-icon']//*[name()='svg']
#Test cases pour l'achat d'un produits avec une nouvelle adresseSearch
Achat
      [Arguments]      ${Achat}     ${fname}     ${lname}     ${C}    ${A}    ${city}    ${P}    ${country}    ${Z}         
      Click Element    css=a[href=""]
      Input Text      css=input[data-sider-insert-id="a725cb52-94ff-4fbc-b11f-2308830457ba"]   ${Achat}
      Click Button    css=button[//button[normalize-space()='Search']]
      Click Element   css=div[class="custom-control custom-checkbox custom-control-inline"] 
      Input Text      css=input[placeholder="First Name"]         ${fname}
      Input Text      css=input[placeholder="Last Name"]          ${lname}
      Input Text      css=input[placeholder="company"]          ${C}
      Input Text      css=input[placeholder="address-1"]    ${A}
      Input Text      css=input[placeholder="city"]          ${city}
      Input Text      css=input[placeholder="postcode"]          ${P}
      Input Text      css=input[placeholder="country"]    ${country}
      Input Text      css=input[placeholder="zone"]    ${Z} 
      Click Element   css=div[class="custom-control custom-checkbox custom-control-inline"]    
      Click Button    css=input[type="submit"]
     

#Test cases pour l'achat d'un produits avec une adresse existante
AchatA    [Arguments]    ${Acheter}
      Click Element    css=a[href=""]
      Input Text      css=input[data-sider-insert-id="a725cb52-94ff-4fbc-b11f-2308830457ba"]   ${Acheter}
      Click Button     css=button[//button[normalize-space()='Search']]
      Click Element    css=div[class="custom-control custom-checkbox custom-control-inline"]    
      Click Button     css=button[type="button"]