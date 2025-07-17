package com.sweetshop.service;

import com.sweetshop.model.Sweet;
import java.util.*;

public class SweetService {
    private static SweetService instance;

    private SweetService() {
    }

    public static SweetService getInstance() {
        if (instance == null) {
            instance = new SweetService();
        }
        return instance;
    }
    private List<Sweet> sweets = new ArrayList<>();

    public boolean addSweet(Sweet sweet) {
        return sweets.add(sweet);
    }

    public List<Sweet> getAllSweets() {
        return sweets;
    }

    public Sweet getSweetById(int id) {
        for (Sweet sweet : sweets) {
            if (sweet.getId() == id) return sweet;
        }
        return null;
    }

    public boolean deleteSweet(int id) {
        return sweets.removeIf(sweet -> sweet.getId() == id);
    }

    public boolean purchaseSweet(int id, int quantity) {
        Sweet sweet = getSweetById(id);
        if (sweet != null && sweet.getQuantity() >= quantity) {
            sweet.setQuantity(sweet.getQuantity() - quantity);
            return true;
        }
        return false;
    }

    public void restockSweet(int id, int quantity) {
        Sweet sweet = getSweetById(id);
        if (sweet != null) {
            sweet.setQuantity(sweet.getQuantity() + quantity);
        }
    }
}
