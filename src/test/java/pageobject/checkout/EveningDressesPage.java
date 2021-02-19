package pageobject.checkout;

import helper.PageHelper;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class EveningDressesPage extends PageHelper {

    private final By eveningDressesPageTitleLocator = By.className("category-name");

    public EveningDressesPage(WebDriver webDriver) {
        super(webDriver);
    }

    public String getEveningPageTitle() {
        return getText(eveningDressesPageTitleLocator);
    }
}
