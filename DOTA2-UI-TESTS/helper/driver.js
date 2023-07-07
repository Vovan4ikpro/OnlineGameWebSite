
const {Builder} = require('selenium-webdriver');
let driver = new Builder().forBrowser(Browser.CHROME).build();
driver.manage().window().maximize();

module.exports.driver = driver;