*** Settings ***
Resource    keyword.robot
Resource    variable.robot

*** Test Cases **
Ajouter un produit
        Open URL    ${U}
        Ajout Produit