package com.sweetshop.test;

import com.sweetshop.model.Sweet;
import com.sweetshop.service.SweetService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class SweetShopServiceTest {

    private SweetService service;

    @BeforeEach
    public void setup() {
        service = SweetService.getInstance();

        // Clear existing sweets to avoid duplicates during tests
        service.getAllSweets().clear();

        // Add test data
        service.addSweet(new Sweet(1, "Kaju Katli", "Nut-Based", 50, 20));
        service.addSweet(new Sweet(2, "Gulab Jamun", "Milk-Based", 20, 10));
        service.addSweet(new Sweet(3, "Candy", "Sugar-Based", 5, 100));
        service.addSweet(new Sweet(100, "Ladoo", "Gram Flour-Based", 15, 25));
        service.addSweet(new Sweet(101, "Rasgulla", "Milk-Based", 25, 10));
    }

    @Test
    public void testAddSweet() {
        Sweet sweet = new Sweet(4, "Barfi", "Milk-Based", 30, 15);
        assertTrue(service.addSweet(sweet));
        assertEquals(sweet, service.getSweetById(4));
    }

    @Test
    public void testPurchaseSweet() {
        boolean result = service.purchaseSweet(2, 5);
        assertTrue(result);
        assertEquals(5, service.getSweetById(2).getQuantity());
    }

    @Test
    public void testPurchaseInvalidId() {
        boolean result = service.purchaseSweet(999, 5);
        assertFalse(result);
    }

    @Test
    public void testPurchaseInsufficientQuantity() {
        boolean result = service.purchaseSweet(2, 100);
        assertFalse(result);
    }

    @Test
    public void testDeleteSweet() {
        assertTrue(service.deleteSweet(3));
        assertNull(service.getSweetById(3));
    }

    @Test
    public void testDeleteInvalidId() {
        assertFalse(service.deleteSweet(999));
    }

    @Test
    public void testRestockSweet() {
        int oldQty = service.getSweetById(100).getQuantity();

        boolean result = service.restockSweet(100, 20);

        assertTrue(result);
        assertEquals(oldQty + 20, service.getSweetById(100).getQuantity());
    }

    @Test
    public void testRestockInvalidId() {
        boolean result = service.restockSweet(999, 10);
        assertFalse(result);
    }

    @Test
    public void testRestockInvalidQty() {
        boolean result = service.restockSweet(101, -5);
        assertFalse(result);
    }
}
