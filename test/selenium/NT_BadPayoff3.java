package com.example.tests;

import java.util.regex.Pattern;
import java.util.concurrent.TimeUnit;
import org.junit.*;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class NuevoTorneoBadPayoff3 {
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
  public void testNuevoTorneoBadPayoff3() throws Exception {
    driver.get(baseUrl + "/DocsWeb/PlataformaTorneos2x2/");
    driver.findElement(By.linkText("Inicio de sesión")).click();
    driver.findElement(By.id("email")).clear();
    driver.findElement(By.id("email")).sendKeys("Profesor@profesor.com");
    driver.findElement(By.id("password")).clear();
    driver.findElement(By.id("password")).sendKeys("profesor");
    driver.findElement(By.xpath("//button[@type='submit']")).click();
    driver.get(baseUrl + "/DocsWeb/PlataformaTorneos2x2/src/nuevotorneo.html");
    driver.findElement(By.id("nombreTorneo")).clear();
    driver.findElement(By.id("nombreTorneo")).sendKeys("Test");
    new Select(driver.findElement(By.id("numSala"))).selectByVisibleText("1");
    driver.findElement(By.id("sucker")).clear();
    driver.findElement(By.id("sucker")).sendKeys("1");
    driver.findElement(By.id("defect")).clear();
    driver.findElement(By.id("defect")).sendKeys("10");
    driver.findElement(By.id("punishment")).clear();
    driver.findElement(By.id("punishment")).sendKeys("w");
    driver.findElement(By.id("reward")).clear();
    driver.findElement(By.id("reward")).sendKeys("6");
    driver.findElement(By.name("buttonNuevoTorneo")).click();
    assertFalse(isElementPresent(By.id("estrategia")));
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
