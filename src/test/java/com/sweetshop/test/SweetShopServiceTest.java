package com.sweetshop.test;

import com.sweetshop.model.Sweet;
import com.sweetshop.service.SweetService;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class SweetShopServiceTest {

    @Test
    public void testAddSweet() {
        SweetService service = SweetService.getInstance();

        Sweet sweet = new Sweet(1, "Kaju Katli", "Nut-Based", 50, 20);
        assertTrue(service.addSweet(sweet));
    }


    @Test
    public void testDeleteSweet() {
        SweetService service = SweetService.getInstance();

        Sweet sweet = new Sweet(3, "Candy", "Sugar-Based", 5, 100);
        service.addSweet(sweet);

        assertTrue(service.deleteSweet(3));
        assertNull(service.getSweetById(3));
    }
}
