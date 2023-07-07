const {When, Given, setDefaultTimeout} = require('cucumber');
const {Builder, Browser, By, Key, until} = require('selenium-webdriver');
const { Before, After } = require('cucumber');
setDefaultTimeout(60 * 1000);
let driver

Before(() => {
    driver = new Builder().forBrowser(Browser.CHROME).build();
    driver.manage().window().maximize();
})

After(() => {
    driver.quit();
})


Given('open {string} page', async function (url) {
    await driver.get(url);
    await driver.sleep(1000);
});

Given('user click on {string} button by class', async function (nameOfElement) {
    await driver.findElement(By.className(nameOfElement)).click()
    await driver.sleep(1000);
});


Given('user click on {string} button by xpath', async function (nameOfElement) {
    await driver.findElement(By.xpath(nameOfElement)).click()
    await driver.sleep(1000);
});


Given('user click on signup link', async function () {
    await driver.findElement(By.xpath("/html/body/main/div/a[1]")).click()
    await driver.sleep(1000);
});

Given('user enter {string} on {string} field', async function (text, xpath) {
    var randomId = Math.random().toString(36).substring(2, 10) + Math.random().toString(36).substring(2, 10);
    if (text === "email") {
        text = `${randomId}@gmail.com`
    } else if (text === "userName") {
        text = randomId;
    }
    await driver.findElement(By.xpath(xpath)).sendKeys(text);
    await driver.sleep(1000);
});