-- liquibase formatted sql
--changeset sameer:1698733907
--comment: inserting outlets and cuisines in type_masters.
INSERT INTO
    type_masters (type, slug, is_active)
VALUES
    ('outlets', 'Bakery', true),
    ('outlets', 'Bar', true),
    ('outlets', 'Beverage Shop', true),
    ('outlets', 'Bhojanalya', true),
    ('outlets', 'Butcher Shop', true),
    ('outlets', 'Café', true),
    ('outlets', 'Casual Dining', true),
    ('outlets', 'Club', true),
    ('outlets', 'Cocktail Bar', true),
    ('outlets', 'Confectionery', true),
    ('outlets', 'Dessert Parlour', true),
    ('outlets', 'Dhaba', true),
    ('outlets', 'Fine Dining', true),
    ('outlets', 'Food Court', true),
    ('outlets', 'Food Truck', true),
    ('outlets', 'Irani Cafe', true),
    ('outlets', 'Kiosk', true),
    ('outlets', 'Lounge', true),
    ('outlets', 'Mess', true),
    ('outlets', 'Microbrewery', true),
    ('outlets', 'Paan Shop', true),
    ('outlets', 'Pub', true),
    ('outlets', 'Quick Bites', true),
    ('outlets', 'Shack', true),
    ('outlets', 'Sweet Shop', true),
    ('cuisine', 'Afghan', true),
    ('cuisine', 'African', true),
    ('cuisine', 'American', true),
    ('cuisine', 'Andhra', true),
    ('cuisine', 'Arabian', true),
    ('cuisine', 'Armenian', true),
    ('cuisine', 'Asian', true),
    ('cuisine', 'Asian Fusion', true),
    ('cuisine', 'Assamese', true),
    ('cuisine', 'Australian', true),
    ('cuisine', 'Awadhi', true),
    ('cuisine', 'Bakery', true),
    ('cuisine', 'Bangladeshi', true),
    ('cuisine', 'Bar Food', true),
    ('cuisine', 'BBQ', true),
    ('cuisine', 'Belgian', true),
    ('cuisine', 'Bengali', true),
    ('cuisine', 'Beverages', true),
    ('cuisine', 'Bihari', true),
    ('cuisine', 'Biryani', true),
    ('cuisine', 'Bohri', true),
    ('cuisine', 'Brazilian', true),
    ('cuisine', 'British', true),
    ('cuisine', 'Bubble Tea', true),
    ('cuisine', 'Burger', true),
    ('cuisine', 'Burmese', true),
    ('cuisine', 'Cafe', true),
    ('cuisine', 'Cafe Food', true),
    ('cuisine', 'Cake', true),
    ('cuisine', 'Cantonese', true),
    ('cuisine', 'Charcoal Chicken', true),
    ('cuisine', 'Chettinad', true),
    ('cuisine', 'Chili', true),
    ('cuisine', 'Chinese', true),
    ('cuisine', 'Coffee', true),
    ('cuisine', 'Coffee and Tea', true),
    ('cuisine', 'Continental', true),
    ('cuisine', 'Desserts', true),
    ('cuisine', 'Drinks Only', true),
    ('cuisine', 'Egyptian', true),
    ('cuisine', 'Ethiopian', true),
    ('cuisine', 'European', true),
    ('cuisine', 'Fast Food', true),
    ('cuisine', 'Finger Food', true),
    ('cuisine', 'French', true),
    ('cuisine', 'Fried Chicken', true),
    ('cuisine', 'Frozen Yogurt', true),
    ('cuisine', 'Fusion', true),
    ('cuisine', 'Garhwali', true),
    ('cuisine', 'German', true),
    ('cuisine', 'Goan', true),
    ('cuisine', 'Greek', true),
    ('cuisine', 'Grill', true),
    ('cuisine', 'Gujarati', true),
    ('cuisine', 'Healthy Food', true),
    ('cuisine', 'Himachali', true),
    ('cuisine', 'Hot dogs', true),
    ('cuisine', 'Hyderabadi', true),
    ('cuisine', 'Ice Cream', true),
    ('cuisine', 'Indian', true),
    ('cuisine', 'Indonesian', true),
    ('cuisine', 'Iranian', true),
    ('cuisine', 'Irish', true),
    ('cuisine', 'Israeli', true),
    ('cuisine', 'Italian', true),
    ('cuisine', 'Japanese', true),
    ('cuisine', 'Juices', true),
    ('cuisine', 'Kashmiri', true),
    ('cuisine', 'Kebab', true),
    ('cuisine', 'Kerala', true),
    ('cuisine', 'Konkan', true),
    ('cuisine', 'Korean', true),
    ('cuisine', 'Lebanese', true),
    ('cuisine', 'Lucknowi', true),
    ('cuisine', 'Maharashtrian', true),
    ('cuisine', 'Malaysian', true),
    ('cuisine', 'Malwani', true),
    ('cuisine', 'Mandi', true),
    ('cuisine', 'Mangalorean', true),
    ('cuisine', 'Mediterranean', true),
    ('cuisine', 'Mexican', true),
    ('cuisine', 'Middle Eastern', true),
    ('cuisine', 'Mishti', true),
    ('cuisine', 'Mithai', true),
    ('cuisine', 'Modern Indian', true),
    ('cuisine', 'Momos', true),
    ('cuisine', 'Mongolian', true),
    ('cuisine', 'Moroccan', true),
    ('cuisine', 'Mughlai', true),
    ('cuisine', 'Naga', true),
    ('cuisine', 'Nepalese', true),
    ('cuisine', 'North Eastern', true),
    ('cuisine', 'North Indian', true),
    ('cuisine', 'Odia', true),
    ('cuisine', 'Oriental', true),
    ('cuisine', 'Paan', true),
    ('cuisine', 'Pakistani', true),
    ('cuisine', 'Pan Asian', true),
    ('cuisine', 'Panini', true),
    ('cuisine', 'Parsi', true),
    ('cuisine', 'Peruvian', true),
    ('cuisine', 'Pizza', true),
    ('cuisine', 'Poké', true),
    ('cuisine', 'Portuguese', true),
    ('cuisine', 'Rajasthani', true),
    ('cuisine', 'Raw Meats', true),
    ('cuisine', 'Roast Chicken', true),
    ('cuisine', 'Rolls', true),
    ('cuisine', 'Russian', true),
    ('cuisine', 'Salad', true),
    ('cuisine', 'Sandwich', true),
    ('cuisine', 'Seafood', true),
    ('cuisine', 'Sindhi', true),
    ('cuisine', 'Singaporean', true),
    ('cuisine', 'South American', true),
    ('cuisine', 'South Indian', true),
    ('cuisine', 'Spanish', true),
    ('cuisine', 'Sri Lankan', true),
    ('cuisine', 'Steak', true),
    ('cuisine', 'Street Food', true),
    ('cuisine', 'Sushi', true),
    ('cuisine', 'Swedish', true),
    ('cuisine', 'Tamil', true),
    ('cuisine', 'Tea', true),
    ('cuisine', 'Tex-Mex', true),
    ('cuisine', 'Thai', true),
    ('cuisine', 'Tibetan', true),
    ('cuisine', 'Turkish', true),
    ('cuisine', 'Vietnamese', true),
    ('cuisine', 'Wraps', true),
    ('kitchen_type', 'delivery', true),
    ('kitchen_type', 'dineout', true);