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