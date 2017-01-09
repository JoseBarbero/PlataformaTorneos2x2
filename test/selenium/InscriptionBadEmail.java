package com.example.tests;

import java.util.regex.Pattern;
import java.util.concurrent.TimeUnit;
import org.junit.*;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class InscriptionBadEmail {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();

  @Before
  public void setUp() throws Exception {
    driver = new FirefoxDriver();
    baseUrl = "http://localhost/";
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
  }

  @Test
  public void testInscriptionBadEmail() throws Exception {
    driver.get(baseUrl + "/DocsWeb/PlataformaTorneos2x2/src/torneos.html");
    driver.findElement(By.id("nombre")).clear();
    driver.findElement(By.id("nombre")).sendKeys("Alumno");
    driver.findElement(By.id("apellidos")).clear();
    driver.findElement(By.id("apellidos")).sendKeys("Alumno");
    driver.findElement(By.id("inputEmail")).clear();
    driver.findElement(By.id("inputEmail")).sendKeys("A");
    driver.findElement(By.id("estrategia")).clear();
    driver.findElement(By.id("estrategia")).sendKeys("Estrategia Test");
    new Select(driver.findElement(By.id("numSala"))).selectByVisibleText("5");
    driver.findElement(By.xpath("(//button[@type='submit'])[2]")).click();
    assertFalse(isElementPresent(By.cssSelector("div.netlogo-model")));
  }

  @After
  public void tearDown() throws Exception {
    driver.quit();
    String verificationErrorString = verificationErrors.toString();
    if (!"".equals(verificationErrorString)) {
      fail(verificationErrorString);
    }
  }

  private boolean isElementPresent(By by) {
    try {
      driver.findElement(by);
      return true;
    } catch (NoSuchElementException e) {
      return false;
    }
  }

  private boolean isAlertPresent() {
    try {
      driver.switchTo().alert();
      return true;
    } catch (NoAlertPresentException e) {
      return false;
    }
  }

  private String closeAlertAndGetItsText() {
    try {
      Alert alert = driver.switchTo().alert();
      String alertText = alert.getText();
      if (acceptNextAlert) {
        alert.accept();
      } else {
        alert.dismiss();
      }
      return alertText;
    } finally {
      acceptNextAlert = true;
    }
  }
}
