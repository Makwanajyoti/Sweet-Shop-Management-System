package com.sweetshop.service;

import com.sweetshop.model.Sweet;
import java.util.*;
import java.util.stream.Collectors;

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

// Inside SweetService.java

public boolean restockSweet(int id, int quantity) {
    Sweet sweet = getSweetById(id);
    if (sweet != null && quantity > 0) {
        sweet.setQuantity(sweet.getQuantity() + quantity);
        return true;
    }
    return false;
}

    
    public List<Sweet> sortByPrice() {
        sweets.sort(Comparator.comparingDouble(Sweet::getPrice));
        return new ArrayList<>(sweets);
    }

    public List<Sweet> sortByQuantity() {
        sweets.sort(Comparator.comparingInt(Sweet::getQuantity));
        return new ArrayList<>(sweets);
    }
public List<Sweet> searchByName(String name) {
    return sweets.stream()
        .filter(s -> s.getName().equalsIgnoreCase(name))
        .collect(Collectors.toList());
}

public List<Sweet> searchByCategory(String category) {
    return sweets.stream()
        .filter(s -> s.getCategory().equalsIgnoreCase(category))
        .collect(Collectors.toList());
}

public List<Sweet> searchByPriceRange(int minPrice, int maxPrice) {
    return sweets.stream()
        .filter(s -> s.getPrice() >= minPrice && s.getPrice() <= maxPrice)
        .collect(Collectors.toList());
}
public List<Sweet> sortSweetsBy(String sortBy) {
    List<Sweet> allSweets = getAllSweets();

    switch (sortBy) {
        case "name":
            allSweets.sort((s1, s2) -> s1.getName().compareToIgnoreCase(s2.getName()));
            break;
        case "price":
            allSweets.sort(Comparator.comparingDouble(Sweet::getPrice));
            break;
        case "quantity":
            allSweets.sort(Comparator.comparingInt(Sweet::getQuantity));
            break;
        case "id":
        default:
            allSweets.sort(Comparator.comparingInt(Sweet::getId));
            break;
    }

    return allSweets;
}

}
