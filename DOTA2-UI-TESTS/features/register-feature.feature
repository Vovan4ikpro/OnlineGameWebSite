Feature: Register Feature

Scenario: Verify that user is able to create account
    Given open 'http://127.0.0.1:3000/' page
    When user click on 'user_buttons' button by class
    And user click on signup link
    When user enter 'userName' on '//div[@class="field"][1]//input' field
    And user enter 'email' on '//div[@class="field"][2]//input' field
    And user enter '123456' on '//div[@class="field"][3]//input' field
    And user enter '123456' on '//div[@class="field"][4]//input' field
    And user enter '09.11.2002' on '//div[@class="field"][5]//input' field
    When user click on '//*[@id="new_user"]/div[7]/input' button by xpath

Scenario: Verify that user is able to log in
    Given open 'http://127.0.0.1:3000/' page
    When user click on 'user_buttons' button by class
    When user enter 'xc2qrybc95501c1p@gmail.com' on '//div[@class="field"][1]//input' field
    And user enter '123456' on '//*[@id="user_password"]' field
    When user click on '//*[@id="new_user"]/div[4]/input' button by xpath

Scenario: Verify that user is able to check hero
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/a[1]' button by xpath

Scenario: Verify that user is able to check hero by searching name
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    And user enter 'MEEPO' on '//*[@id="hero_name"]' field
    When user click on '/html/body/main/form/input[4]' button by xpath
    When user click on '/html/body/main/a' button by xpath
     
#### Power

Scenario: Verify that user is able to find hero by filters (Difficult 1, Attribute Power)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[1]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[1]' button by xpath

Scenario: Verify that user is able to find hero by filters (Difficult 2, Attribute Power)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[1]' button by xpath

Scenario: Verify that user is able to find hero by filters (Difficult 3, Attribute Power)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[3]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[1]' button by xpath

#### Agility

Scenario: Verify that user is able to find hero by filters (Difficult 1, Attribute Agility)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[1]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[2]' button by xpath

Scenario: Verify that user is able to find hero by filters (Difficult 2, Attribute Agility)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[2]' button by xpath

Scenario: Verify that user is able to find hero by filters (Difficult 3, Attribute Agility)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[3]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[2]' button by xpath

#### Intelect

Scenario: Verify that user is able to find hero by filters (Difficult 1, Attribute Intelect)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[1]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[3]' button by xpath

Scenario: Verify that user is able to find hero by filters (Difficult 2, Attribute Intelect)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[3]' button by xpath

Scenario: Verify that user is able to find hero by filters (Difficult 3, Attribute Intelect)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[3]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[3]' button by xpath

#### Mixed

Scenario: Verify that user is able to find hero by filters (Difficult 1, Attribute Mixed)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[1]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[4]' button by xpath

Scenario: Verify that user is able to find hero by filters (Difficult 2, Attribute Mixed)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[4]' button by xpath

Scenario: Verify that user is able to find hero by filters (Difficult 3, Attribute Mixed)
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[2]' button by xpath
    When user click on '/html/body/main/div/div[1]/a[3]' button by xpath
    When user click on '/html/body/main/div/div[2]/a[4]' button by xpath

Scenario: Verify that user is able to check updates
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[1]/a[3]' button by xpath
    When user click on '/html/body/a[1]' button by xpath

Scenario: Verify that user is able to open Steam link
    Given open 'http://127.0.0.1:3000/' page
    When user click on '/html/body/div[2]/div/div[3]/a' button by xpath
