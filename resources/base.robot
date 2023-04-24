***Settings***
Library     AppiumLibrary

Resource    steps.robot

*** Keywords ***
Abrir app
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel_2_API_28
    ...                 app=${EXECDIR}/app/nuclone.apk
    ...                 udid=emulator-5554

    Wait Until Element Is Visible   accessibility_id=card-hero      10
    
Fechar app
    Capture Page Screenshot
    Close Application