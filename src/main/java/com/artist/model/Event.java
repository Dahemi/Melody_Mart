package com.artist.model;


public class Event {
    private String id;
    private String artistName;
    private String eventName;
    private String date;
    private String venue;
    private String capacity;
    private String price;

    public Event(String id, String artistName, String eventName, String date, String venue, String capacity,String price) {
    	 	this.id = id;
    	 	this.artistName = artistName;
    	    this.eventName = eventName;
    	    this.date = date;
    	    this.venue = venue;;
    	    this.capacity = capacity;;
    	    this.price = price;
	}

	// Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getArtistName() {
        return artistName;
    }

    public void setArtistName(String artistName) {
        this.artistName = artistName;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}