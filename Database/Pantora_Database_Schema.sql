-- ============================================================
-- PANTORA ATELIER - COMPLETE DATABASE SCHEMA (USER + ADMIN)
-- Normalized 3NF Relational Database Design
-- ============================================================

-- 1. ADMIN USERS TABLE (Admin Panel Authentication & Staff Profile)
CREATE TABLE AdminUsers (
    AdminID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Role VARCHAR(50) DEFAULT 'Operations Lead',
    Workstation VARCHAR(100) DEFAULT 'Atelier Mumbai Hub',
    LastLogin DATETIME DEFAULT GETDATE(),
    IsActive BIT DEFAULT 1
);

-- 2. ADMIN STOREFRONT SETTINGS TABLE
CREATE TABLE AdminSettings (
    SettingID INT PRIMARY KEY IDENTITY(1,1),
    StoreCurrency VARCHAR(10) DEFAULT 'INR',
    DefaultCourier VARCHAR(100) DEFAULT 'BlueDart Air Priority Express',
    AlertEmail VARCHAR(100) DEFAULT 'concierge@pantora.in',
    UpdatedDate DATETIME DEFAULT GETDATE()
);

-- 3. CATEGORIES TABLE (Fit Cuts)
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName VARCHAR(50) NOT NULL,
    Description VARCHAR(255),
    IsActive BIT DEFAULT 1
);

-- 4. PRODUCTS TABLE (Inventory Master)
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(150) NOT NULL,
    SKU VARCHAR(50) UNIQUE NOT NULL,
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID), -- FK
    Fabric VARCHAR(100),
    Colorway VARCHAR(50),
    Price DECIMAL(10,2) NOT NULL,
    OriginalMRP DECIMAL(10,2),
    StockQuantity INT NOT NULL,
    ImageUrl VARCHAR(255),
    Badge VARCHAR(50) DEFAULT 'Bestseller',
    Description NVARCHAR(MAX),
    IsActive BIT DEFAULT 1,
    CreatedDate DATETIME DEFAULT GETDATE()
);

-- 5. PRODUCT SIZES TABLE (Waist Size Inventory)
CREATE TABLE ProductSizes (
    SizeID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID), -- FK
    WaistSize INT NOT NULL,
    StockQuantity INT NOT NULL
);

-- 6. CUSTOMERS / USERS TABLE (Client Registry & Tailoring Profile)
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    ShippingAddress VARCHAR(300),
    PreferredFit VARCHAR(50),
    StandardWaist INT,
    InseamPreference VARCHAR(50),
    LifetimeSpend DECIMAL(10,2) DEFAULT 0,
    TotalOrders INT DEFAULT 0,
    JoinedDate DATETIME DEFAULT GETDATE()
);

-- 7. ORDERS TABLE (Fulfillment & Dispatch Manifest)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    OrderRef VARCHAR(50) UNIQUE NOT NULL,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID), -- FK
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(10,2) NOT NULL,
    SubTotal DECIMAL(10,2) NOT NULL,
    GstAmount DECIMAL(10,2) NOT NULL,
    PaymentMethod VARCHAR(50) DEFAULT 'Razorpay / UPI',
    PaymentStatus VARCHAR(50) DEFAULT 'Settled',
    FulfillmentStatus VARCHAR(50) DEFAULT 'Ready to Dispatch', -- Admin updates this
    TrackingNumber VARCHAR(50),                                -- BlueDart AWB
    AssignedCarrier VARCHAR(100) DEFAULT 'BlueDart Air Priority Express',
    ShippingAddress VARCHAR(300) NOT NULL,
    PinningNote VARCHAR(255),
    StaffMemo NVARCHAR(MAX)
);

-- 8. ORDER ITEMS TABLE (Many-to-Many: Orders to Products)
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT FOREIGN KEY REFERENCES Orders(OrderID), -- FK
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID), -- FK
    WaistSize INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL
);

-- 9. RETURNS & EXCHANGES TABLE (Admin Reverse Logistics)
CREATE TABLE Returns (
    ReturnID INT PRIMARY KEY IDENTITY(1,1),
    ReturnRef VARCHAR(50) UNIQUE NOT NULL,
    OrderID INT FOREIGN KEY REFERENCES Orders(OrderID), -- FK
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID), -- FK
    Reason VARCHAR(200) NOT NULL,
    ExchangeSize INT,
    ReturnStatus VARCHAR(50) DEFAULT 'Exchange Pickup Scheduled',
    PickupDate DATETIME,
    Carrier VARCHAR(100) DEFAULT 'BlueDart Air Priority'
);

-- 10. CART TABLE
CREATE TABLE Cart (
    CartID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID), -- FK
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID), -- FK
    WaistSize INT NOT NULL,
    Quantity INT NOT NULL DEFAULT 1,
    AddedDate DATETIME DEFAULT GETDATE()
);

-- 11. WISHLIST TABLE
CREATE TABLE Wishlist (
    WishlistID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID), -- FK
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID), -- FK
    AddedDate DATETIME DEFAULT GETDATE()
);

-- ============================================================
-- SAMPLE DATA (Initial Seeds)
-- ============================================================

-- Admin Staff (Default Demo Credentials)
INSERT INTO AdminUsers (FullName, Email, Password, Phone, Role, Workstation)
VALUES ('Aditya Sharma', 'curator@pantora.in', 'Admin@123', '+91 98201 44820', 'Operations Lead', 'Atelier Mumbai Hub');

-- Admin Settings
INSERT INTO AdminSettings (StoreCurrency, DefaultCourier, AlertEmail)
VALUES ('INR', 'BlueDart Air Priority Express', 'concierge@pantora.in');

-- Categories
INSERT INTO Categories (CategoryName, Description) VALUES
('Korean Style', 'High-waisted fluid drape trousers with deep forward pleats'),
('Regular Fit', 'Classic mid-rise straight trousers crafted from Belgian flax linen'),
('Slim Fit', 'Streamlined sartorial taper from knee to cuff in fine worsted wool'),
('Baggy Fit', 'Architectural wide-leg volume in heavy Japanese drill cotton twill');

-- Products
INSERT INTO Products (ProductName, SKU, CategoryID, Fabric, Colorway, Price, OriginalMRP, StockQuantity, ImageUrl, Badge) VALUES
('The Seoul Pleated Fluid Trouser', 'PN-KOR-01', 1, 'Super 120s Fluid Wool Gabardine', 'Onyx Black', 2499.00, 3499.00, 48, 'Images/korean-seoul-pleat.png', 'Bestseller'),
('The Como Linen Relaxed Trouser', 'PN-REG-01', 2, '100% Belgian Flax Linen', 'Sand Khaki', 2499.00, 3999.00, 62, 'Images/reg-como-linen.png', 'Seasonal Pick'),
('The Kensington Worsted Wool Trouser', 'PN-SLM-01', 3, 'Fine Worsted Wool (280 GSM)', 'Midnight Black', 3299.00, 4499.00, 19, 'Images/slim-kensington-wool.png', 'Atelier Exclusive'),
('The Osaka Heavy Twill Wide Trouser', 'PN-BAG-01', 4, '340 GSM Japanese Cotton Drill', 'Desert Ecru', 2699.00, 4199.00, 34, 'Images/baggy-osaka-twill.png', 'New Arrival');

-- Customers
INSERT INTO Customers (FullName, Email, Password, Phone, ShippingAddress, PreferredFit, StandardWaist, LifetimeSpend, TotalOrders) VALUES
('Vikram Malhotra', 'vikram.m@luxury.in', 'User@123', '+91 98112 30948', 'Villa 12, Palm Meadows, Whitefield, Bengaluru, KA', 'Regular Fit', 32, 5798.00, 2),
('Sameer Kapoor', 'sameer.k@outlook.com', 'User@123', '+91 97170 82194', 'C-14, Vasant Vihar, New Delhi, DL', 'Baggy Fit', 30, 14296.00, 4);

-- Orders
INSERT INTO Orders (OrderRef, CustomerID, TotalAmount, SubTotal, GstAmount, FulfillmentStatus, TrackingNumber, ShippingAddress, PinningNote) VALUES
('ORD-9102', 1, 2899.00, 2588.00, 311.00, 'Ready to Dispatch', 'BD-AIR-8820000', 'Villa 12, Palm Meadows, Bengaluru, KA', 'Doorstep Pinning: Standard 32 inch inseam'),
('ORD-9241', 2, 2499.00, 2231.00, 268.00, 'In Transit', 'BD-AIR-8829104', 'C-14, Vasant Vihar, New Delhi, DL', 'Hem adjusted to 30.5 inches');
