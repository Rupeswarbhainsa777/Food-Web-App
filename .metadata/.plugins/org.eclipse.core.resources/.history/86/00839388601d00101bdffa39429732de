package com.tap.Test;
import com.tap.Dao.*;
import com.tap.DaoImple.*;
import com.tap.modeal.*;

public class Test 
{

	
	public static void main(String[] args) {
        // Instantiate the MenuImp DAO
        MenuImp menuDao = new MenuImp();

        // Create a new Menu object to insert
        Menu newMenu = new Menu(0, "Pasta", 250.0, "Delicious creamy pasta", "images/pasta.jpg", true, 1, 4.5);

        // Insert the menu item into the database
        menuDao.addMenu(newMenu);

        // Retrieve and print the newly inserted menu item
        Menu insertedMenu = menuDao.getMenu(1); // Assuming `menuid` 1 was assigned
        if (insertedMenu != null) {
            System.out.println("Inserted Menu Details:");
            System.out.println("ID: " + insertedMenu.getMenuId());
            System.out.println("Name: " + insertedMenu.getItemName());
            System.out.println("Price: " + insertedMenu.getItemPrice());
            System.out.println("Description: " + insertedMenu.getDescription());
            System.out.println("Image Path: " + insertedMenu.getImagePath());
            System.out.println("Availability: " + (insertedMenu.isAvailable() ? "Yes" : "No"));
            System.out.println("Restaurant ID: " + insertedMenu.getRestaurantId());
            System.out.println("Rating: " + insertedMenu.getRating());
        } else {
            System.out.println("Menu item not found!");
        }
    }
}
